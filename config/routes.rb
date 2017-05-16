Rails.application.routes.draw do
  root "static_pages#home", page: "home"
  get "/static_pages/:page", to: "static_pages#show"
  get "/about", to: "static_pages#about"
  get "/help", to: "static_pages#help"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users, only: [:show, :new, :create]
end
