Rails.application.routes.draw do 
 
  devise_for :users
  resources :users

  resources :closets, only: [:show, :index] do
    resources :clothes
  end

  authenticated :user do
    root to: 'closets#index', as: :authenticated_root
  end

  unauthenticated do
    root to: "home#index"
  end

end


