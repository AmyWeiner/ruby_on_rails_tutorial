SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root "static_pages#home"
  get "/help", to: "static_pages#help", as: "help"
  get "/about", to: "static_pages#about", as: "about"
  get "/contact", to: "static_pages#contact", as: "contact"
  get "/signup", to: "users#new", as: "signup"
  get "/signin", to: "sessions#new", as: "signin"
  delete "/signout", to: "sessions#destroy", as: "signout"
end
