Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :closets, except: [:index]
  root to: 'users#index'
end
