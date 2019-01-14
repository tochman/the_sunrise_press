Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :create]
  devise_for :users  
  resources :categories, only: [:show]
end
