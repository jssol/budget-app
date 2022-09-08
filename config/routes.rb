# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"

  resources :users, only: [:show] do
    resources :groups, only: [:index, :show, :create, :new] do
      resources :entities, only: [:index, :show, :create, :new]
    end
  end
end
