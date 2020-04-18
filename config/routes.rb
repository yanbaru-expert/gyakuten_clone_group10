Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'movies#index'

  #回答追加
  resources :questions, only: [:index, :show, :create, :edit, :update]
  resources :questions do
    resource :solutions, only: [:create]
  resources :movies
  resources :questions
  resources :aws_texts
  resources :lines
  resources :texts

  end
end
