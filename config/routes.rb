Rails.application.routes.draw do

  root to: 'users#index'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :destroy] do
  end

  resources :posts, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :commnts, only: [:create, :edit, :destroy] do
    end
  end
  
end
