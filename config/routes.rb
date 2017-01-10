Rails.application.routes.draw do
  get 'dashboard/index'
  # get 'dashboard' => 'dashboard#index', :as => :dashboard

  get 'home/index'

  resources :projects

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
