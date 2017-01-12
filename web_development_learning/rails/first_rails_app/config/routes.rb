Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get "/articles",          to: "articles#index"
  # get "/articles/:id",      to: "articles#show"
  # post "/articles",         to: "articles#create"
  # put "/articles/:id",      to: "articles#update"
  # delete "/articles/:id",   to: "articles#destroy"
  # get "/articles/new",      to: "articles#new"
  # get "/articles/:id/edit", to: "articles#edit"

  # get "/users",          to: "users#index"
  # get "/users/:id",      to: "users#show"
  # post "/users",         to: "users#create"
  # put "/users/:id",      to: "users#update"
  # delete "/users/:id",   to: "users#destroy"
  # get "/users/new",      to: "users#new"
  # get "/users/:id/edit", to: "users#edit"
  root to: "articles#index"

  resources :articles, only: [:index, :show]


end
