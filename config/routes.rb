Rails.application.routes.draw do
  devise_for :users

  root to: "offers#index"
  resources :offers, except: :index do
    resources :sessions, only: [ :new, :create, :index, :show ]
  end
  get "my_sessions", to: "sessions#my_sessions"
  get "my_offers", to: "offers#my_offers"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
