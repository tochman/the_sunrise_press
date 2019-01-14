Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
  namespace :journalist do
    resources :articles, only: [:new, :create]
  end

  devise_for :users  
  resources :categories, only: [:show]
end
