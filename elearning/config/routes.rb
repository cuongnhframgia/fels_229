Rails.application.routes.draw do
  get "static_pages/home"
  get "static_pages/help"
  root "static_pages#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users , only: [:show]
end
