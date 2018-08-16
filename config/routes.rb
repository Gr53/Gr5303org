Rails.application.routes.draw do
  resources :n_nets
  resources :kiddles
  resources :cities
  resources :incidents
  resources :incident_types
  resources :risk_levels
  post 'user_token' => 'user_token#create'
  resources :users
  resources :identification_types
  resources :support_nets
  resources :neighborhoods
  resources :localities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
