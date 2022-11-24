Rails.application.routes.draw do
  devise_for :users

  root to: "offers#index"
  resources :offers, except: :index do
    collection do
      get :escalade
      get :tennis
      get :swimming
      get :running
      get :golf
      get :gym
    end
    resources :sessions, only: [ :new, :create, :index, :show ]
  end
  get "my_sessions", to: "sessions#my_sessions"
  get "my_offers", to: "offers#my_offers"
  get "profil", to: "pages#profil"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
