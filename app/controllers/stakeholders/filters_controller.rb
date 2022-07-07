class Stakeholders::FiltersController < ApplicationController
  def update
    store_search_attributes

    # TODO: or render results template (& anythng else that has changed)?
    # TODO: whitelist
    redirect_to params[:redirect_url]
  end

  private

  def store_search_attributes
    pp "%%% #{params.dig(:search)}"
  end
end
