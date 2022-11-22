Rails.application.routes.draw do
  devise_for :users

  root to: "offers#index"
  resources :offers, except: :index do
    resources :sessions, only: [ :new, :create, :index, :show ]
  end
  get "my-sessions", to: "sessions#my-sessions"
  get "my-offers", to: "sessions#my-offers"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
