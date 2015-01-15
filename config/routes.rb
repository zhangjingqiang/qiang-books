Rails.application.routes.draw do
  devise_for :admins
  resources :books
  
  root 'books#index'
end
