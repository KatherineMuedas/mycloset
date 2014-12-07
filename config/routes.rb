Rails.application.routes.draw do
  get 'closets/show'

  get 'closets/new'

  get 'closets/create'

  get 'closets/edit'

  get 'closets/update'

  get 'closets/destroy'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
