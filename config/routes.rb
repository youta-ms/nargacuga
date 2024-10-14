Rails.application.routes.draw do
  root "top#show"
  get "sessions/new"

  # ユーザー用のルート設定
  get "signup", to: "users#new"
  resources :users, except: %i[:new]

  # Sessions
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
end
