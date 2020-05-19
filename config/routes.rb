Rails.application.routes.draw do

  root to: 'users#index'

  resources :users, only: [:index, :destroy] do
  end

  resources :posts, only: [:index, :new, :creat, :show, :edit, :destroy] do
  end

  resources :commnts, only: [:creat, :edit, :destroy] do
  end

  devise_for :users
end
