Rails.application.routes.draw do

  root to: "courses#index"
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
