Rails.application.routes.draw do
  devise_for :users
  resources :commercial_units
  resources :complex_buildings
  resources :houses

  root 'home#index'

  post 'purchase', to: 'home#purchase', as: 'purchase'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
