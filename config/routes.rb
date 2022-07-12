Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #users
  get "/me", to: "users#show"
end
