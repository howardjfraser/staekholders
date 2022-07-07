Rails.application.routes.draw do
  root "stakeholders/stakeholders#index"

  scope :stakeholders do
    resource :report, module: :stakeholders, only: :show
    resource :filter, module: :stakeholders, only: :update
  end

  resources :stakeholders, module: :stakeholders
end
