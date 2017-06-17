Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :reservations
  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
