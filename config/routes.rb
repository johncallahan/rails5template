require "sidekiq/web"

Rails.application.routes.draw do
  resources :products
  namespace :admin do
    resources :users
    resources :announcements
    resources :notifications
    resources :services
    resources :sizes

    root to: "users#index"
  end
  get "/privacy", to: "home#privacy"
  get "/terms", to: "home#terms"
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  root to: "products#index"
end
