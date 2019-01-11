Rails.application.routes.draw do
  get 'categories/show'
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show]
  resources :categories, only: [:show]
end
