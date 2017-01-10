Rails.application.routes.draw do
  resources :projects
  # root :to => 'welcrome#index'
  root 'welcome#index'
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  get 'welcome' => 'welcome#index', :as => :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
