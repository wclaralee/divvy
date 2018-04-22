Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

  get "/transactions/new", to: "transactions#new"
  post "/transactions/create", to: "transactions#create", as: "create_transaction"

end
