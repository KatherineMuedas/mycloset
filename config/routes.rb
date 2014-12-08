Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :closets, except: [:index]
  end
  root to: 'users#index'
end
