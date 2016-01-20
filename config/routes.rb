Rails.application.routes.draw do
  resources :commands
  resources :categories
  root to: 'commands#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
end
