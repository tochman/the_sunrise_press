Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
  resources :categories, only: [:show]
end
