Myflix::Application.routes.draw do
  root to: "pages#front"
  get 'home', to: "videos#index"
   # root to: "videos#index"

  resources :videos, only: [:show] do
    collection do
      post :search, to: "videos#search"
    end
  end
  # get 'ui(/:action)', controller: 'ui'
  resources :categories, only: [:show, :index]

  get 'register', to: "users#new"
  get 'sign_in', to: "sessions#new"
  get 'sign_out', to: "sessions#destroy"
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
