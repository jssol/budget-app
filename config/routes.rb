# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"

  get '/users/:user_id/groups/:group_id/entities/most_recent', to: 'entities#most_recent', as: 'recent_expenses'
  get '/users/:user_id/groups/:group_id/entities/most_ancient', to: 'entities#most_ancient',  as: 'ancient_expenses'
  get '/users/:user_id/groups/:group_id/entities/most_expensive', to: 'entities#most_expensive', as: 'expensive_expenses'

  resources :users, only: [:show] do
    resources :groups, only: [:index, :show, :create, :new] do
      resources :entities, only: [:index, :show, :create, :new]
    end
  end
end
