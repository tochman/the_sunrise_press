Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
  namespace :content_management do
    resources :articles, except: :destroy do
      patch :publish_article, on: :member
    end
  end
  
  devise_for :users  
  resources :categories, only: [:show]
end
