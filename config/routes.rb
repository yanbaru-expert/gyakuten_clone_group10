Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'

  resources :movies
  resources :questions
  resources :aws_texts
  resources :lines
  resources :texts
  resources :questions, only: [:index, :show, :create, :edit, :update] do
    resource :solutions, only: [:create]
  end
end
