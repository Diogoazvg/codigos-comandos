Rails.application.routes.draw do
  devise_for :admins
  resources :commands
  resources :categories
  root to: 'commands#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
end
