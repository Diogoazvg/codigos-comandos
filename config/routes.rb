Rails.application.routes.draw do
  resources :commands
  resources :categories
  root to: 'commands#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users

  #devise_for :users, path_names: {sign_in: "login", sign_out: "logout"},
#controllers: {omniauth_callbacks: "authentications", registrations: "registrations"}
end
