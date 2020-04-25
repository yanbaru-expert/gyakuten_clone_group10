Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'


  resources :questions, only: [:index, :show, :create, :edit, :update]
  resources :aws_texts
  resources :movies
  resources :questions
  resources :aws_texts
  resources :lines
  resources :texts
  resources :questions do
    resource :solutions, only: [:create]
  end
end
