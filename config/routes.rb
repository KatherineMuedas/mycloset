Rails.application.routes.draw do 
 
  devise_for :users
  resources :users

  resources :closets, only: [:show, :index] do
    resources :clothes
  end
  root to: 'closets#index'
end
