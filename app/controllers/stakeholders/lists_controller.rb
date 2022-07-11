class Stakeholders::ListsController < ApplicationController
  def show
    @search = StakeholderSearch.new(retrieve_search_attributes)
    @stakeholders = @search.search
  end

  def update
    store_search_attributes
    redirect_to list_url
  end

  private

  def store_search_attributes
    current_user.stakeholder_search.update(**permitted_params.to_hash)
  end

  def retrieve_search_attributes
    current_user.stakeholder_search.to_h
  end

  def permitted_params
    params.require(:search).permit(:terms, :party, :faction, :panel_open)
  end
end
