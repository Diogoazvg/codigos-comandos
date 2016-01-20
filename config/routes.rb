Rails.application.routes.draw do
  resources :commands
  resources :categories
  root to: 'commands#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_for :users, :controllers => { :omniauth_callbacks => 'authentications', :registrations => 'registrations' }
  resources :users

  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
end
