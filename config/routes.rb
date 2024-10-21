Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check


  namespace :api do
    get 'users', to: 'users#index'
  end
  
end
