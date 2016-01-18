Rails.application.routes.draw do
  resources :commands
  resources :categories
  root to: 'commands#index'
  devise_for :users
  resources :users
end
