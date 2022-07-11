class Stakeholders::ListsController < ApplicationController
  def show
    create_list
  end

  def update
    store_search_params
    create_list
    render :show
  end

  private

  def store_search_params
    current_user.stakeholder_search.update(**permitted_params.to_hash)
  end

  def retrieve_search_params
    current_user.stakeholder_search.to_h
  end

  def permitted_params
    params.require(:search).permit(:terms, :party, :faction, :panel_open)
  end

  def create_list
    @search = StakeholderSearch.new(retrieve_search_params)
    @stakeholders = @search.search
  end
end
