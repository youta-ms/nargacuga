Rails.application.routes.draw do
  get "sessions/new"
  # root "home#index"
  # get "about", to: "home#about"

  # ユーザー用のルート設定
  get "signup", to: "users#new"
  resources :users, except: %i[:new]

  # Sessions
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "login", to: "sessions#destroy"
end
