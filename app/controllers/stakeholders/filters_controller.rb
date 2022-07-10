class Stakeholders::FiltersController < ApplicationController
  def update
    store_search_attributes

    # TODO: or render results template (& anythng else that has changed)?
    # TODO: whitelist
    redirect_to params[:redirect_url]
  end

  private

  def store_search_attributes
    current_user.stakeholder_search.update(**permitted_params.to_hash)
  end

  def permitted_params
    params.require(:search).permit(:terms, :party, :faction, :panel_open)
  end
end
