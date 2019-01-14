Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
  namespace :content_management do
    resources :articles, only: [:new, :create, :edit, :update]
  end

  devise_for :users  
  resources :categories, only: [:show]
end
