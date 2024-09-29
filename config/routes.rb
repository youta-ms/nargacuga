Rails.application.routes.draw do
  # root "home#index"
  # get "about", to: "home#about"

  # ユーザー用のルート設定
  get "signup", to: "users#new"
  resources :users, except: %i[:new]
end
