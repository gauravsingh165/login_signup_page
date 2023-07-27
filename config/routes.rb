Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "about", to: "about#index"
  
  get "sign_up", to: "registration#new"
  post "sign_up" , to: "registration#create"
  
  root to: "main#index"
end
