Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resource :users, only: [:new, :create]
  resource :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
