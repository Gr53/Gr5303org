Rails.application.routes.draw do
  resources :incidents
  resources :incident_types
  resources :risk_levels
  post 'user_token' => 'user_token#create'
  resources :users
  resources :identification_types
  resources :support_nets
  resources :neighborhoods
  resources :localities
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
