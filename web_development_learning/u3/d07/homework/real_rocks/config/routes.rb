Rails.application.routes.draw do

  root to: "create_rocks#index"
  resources :create_rocks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
