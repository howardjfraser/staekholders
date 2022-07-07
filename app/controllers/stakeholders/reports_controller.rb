class Stakeholders::ReportsController < ApplicationController
  def show
    @search = StakeholderSearch.new(retrieve_search_attributes)
    stakeholders = @search.search
    @parties = stakeholders.map(&:party).tally
    @factions = stakeholders.map(&:faction).tally
  end

  private

  def retrieve_search_attributes
    current_user.stakeholder_search.to_h
  end
end
