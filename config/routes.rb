Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  root to: "home#index"

  get "/new", to: "transactions#new", as: "new_transactions"
>>>>>>> c681d42ff5c8dea11be3ea6e33d136a513a6692f
end
