Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "about#index"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"
  
  get "sign_up", to: "registration#new" ,as: :new_sign_up
  post "sign_up" , to: "registration#create"

  get "sign_in", to: "sessions#new", as: :new_sign_in
  post "sign_in" , to: "sessions#create"

  delete "logout", to: "sessions#destroy"
  
  root to: "main#index"
end
