Rails.application.routes.draw do
  resources :meals
  resources :admins
  resources :users
  post "/login", to: "sessions#create"
  post "/login/admin", to: "sessions#create_admin"
end
