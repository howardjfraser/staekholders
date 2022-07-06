class Stakeholder < ApplicationRecord
  PARTIES = ["Labor", "Liberal", "Greens"]
  FACTIONS = ["Left", "Centre", "Right"]

  validates :name, presence: true
  validates :party, inclusion: { in: PARTIES }
  validates :faction, inclusion: { in: FACTIONS }
end
