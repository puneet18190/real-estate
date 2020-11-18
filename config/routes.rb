Rails.application.routes.draw do
  resources :commercial_units
  resources :complex_buildings
  resources :houses

  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
