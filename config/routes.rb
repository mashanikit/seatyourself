Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'users/own_restaurants' => 'users#showr'

  resource :users, only: [:new, :create, :show, :edit, :update]
  resource :sessions, only: [:new, :create, :destroy]
  resources :restaurants do
    resources :reservations
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
