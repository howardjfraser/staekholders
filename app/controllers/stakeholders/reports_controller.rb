class Stakeholders::ReportsController < ApplicationController
  def show
    @search = StakeholderSearch.new(search_params)
    stakeholders = @search.search
    @parties = stakeholders.map(&:party).tally
    @factions = stakeholders.map(&:faction).tally
  end

  private

  def search_params
    params.permit(search: {})[:search]
  end
end
