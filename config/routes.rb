Rails.application.routes.draw do
  resources :calendars
  resources :orders
  resources :meals
  resources :admins
  resources :users
  post "/login", to: "sessions#create"
  post "/login/admin", to: "sessions#create_admin"
  post :admin_meals, to: "meals#admin_meals"
  post :meals_per_day, to: "calendars#meals_per_day"
  post :user_orders, to: "orders#user_orders"
end
