class StakeholderSearch
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :terms, :string
  attribute :party, :string
  attribute :faction, :string
  attribute :panel_open, :boolean

  def search
    result = Stakeholder.all
    result = result.where('lower(name) LIKE ?', "%#{terms.downcase}%") if terms.present?
    result = result.where('party = ?', party)  if party.present?
    result = result.where('faction = ?', faction)  if faction.present?
    result.sort_by(&:name)
  end

  def any_filters?
    party.present? || faction.present?
  end
end
