Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/login'
  get 'home/signup'

  post "/login", to: 'sessions#create'
  post "/logout", to: 'sessions#destroy'
  get "/logged_in", to: 'sessions#is_logged_in?'
  post "/signup", to: 'users#create'
  get "/welcome", to: "home#welcome"

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do

    end
  end
end
