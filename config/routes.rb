Rails.application.routes.draw do
  root "stakeholders/stakeholders#index"

  scope :stakeholders do
    resource :report, module: :stakeholders, only: :show
  end

  resources :stakeholders, module: :stakeholders
end
