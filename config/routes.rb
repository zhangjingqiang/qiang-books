Rails.application.routes.draw do
  devise_for :admins
  resources :books
  get "categories/:id", to: "categories#index", as: "category"
  
  root 'books#index'
end
