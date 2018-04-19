Rails.application.routes.draw do
  root to: "home#index"

  get "/new", to: "transactions#new", as: "new_transactions"
end
