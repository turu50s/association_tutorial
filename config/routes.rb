Rails.application.routes.draw do
  root 'tweets#index'
  
  get 'comments/create'
  get 'comments/destroy'
  
  # get 'relationships/create'
  # get 'relationships/destroy'
  # get 'favorites/create'
  # get 'favorites/destroy'
  # get 'tweets/new'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/create'
  # get 'useres/index'
  # get 'useres/show'

  devise_for :users

  resources :tweets do
    resource :favorites, only: [:create, :destroy]
    resource :comments,  only: [:create, :destroy]
  end

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
