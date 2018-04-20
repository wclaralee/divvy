Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users

  root to: "home#index"

  get "/new", to: "transactions#new", as: "new_transactions"

end
