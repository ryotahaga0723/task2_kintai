Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'users#new'

  resources :approvals, only: [:edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:index, :new, :create, :show, :edit, :update] do
    member do
      get :edit_admin
    end
  end
  resources :timecards, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get :index_sub
      get :index_admin
      get :index_admin_month
    end
  end
  resources :schedules do
    member do
      post :update_apply
    end
  end
  resources :sub_businesses
  resources :main_business_times do
    collection do
      get :new_time
      get :decide
    end
    member do
      get :edit_time
    end
  end
  resources :sub_business_times do
    collection do
      get :new_time
      get :decide
    end
    member do
      get :edit_time
    end
  end
  resources :applies
  resources :contracts

  if Rails.env.development?
    require "sidekiq/web"
    mount Sidekiq::Web => "/sidekiq"
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
