Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end
  root to: 'tops#index'
  resources :tops, only: :index
  resources :users, only: [:index, :show, :edit] do
    collection do
      get 'search'
    end
  end
  resources :profiles, only: [:edit, :update]
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
  resources :topics do
    resources :likes, only: [:create, :destroy]
  end
end
