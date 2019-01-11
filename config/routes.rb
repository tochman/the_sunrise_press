Rails.application.routes.draw do
  
  resources :articles, only: [:index, :show]
 
  root controller: :articles, action: :index
end
