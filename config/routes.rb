Rails.application.routes.draw do
  root "static_pages#home", page: "home"
  get "/static_pages/:page", to: "static_pages#show"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  post "/rate", to: "rater#create", as: "rate"
  resources :users, only: [:show, :new, :create]
  resources :books, only: [:index, :show]
  resources :comments, only: [:create, :destroy]
  resources :categories, only: [:show]
  resources :publishing_companies, only: [:show]
  resources :order_lines, only: [:create, :update, :destroy]
  resource :cart, only: [:show]
  resources :orders, only: [:update, :destroy]
  namespace :admin do
    get "/home", to: "list_managements#home"
    resources :books, except: [:edit, :update, :destroy]
    resources :publishing_companies, except: [:edit, :update, :destroy]
    resources :categories, except: [:edit, :update, :destroy]
  end
end
