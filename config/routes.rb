Rails.application.routes.draw do
  
  resources :articles, only: [:index]
 
  root controller: :articles, action: :index
end
