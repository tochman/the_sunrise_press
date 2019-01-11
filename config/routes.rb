Rails.application.routes.draw do
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :create]
  resources :categories, only: [:show]
end
