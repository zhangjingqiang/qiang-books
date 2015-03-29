Rails.application.routes.draw do
  resources :books
  resources :categories, only: :show
  
  devise_for :admins
  devise_scope :admin do
    get 'admin', :to => 'devise/sessions#new'
  end
  
  root 'books#index'
end
