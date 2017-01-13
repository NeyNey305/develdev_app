Rails.application.routes.draw do
  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'

  get 'dashboard/index'
  # get 'dashboard' => 'dashboard#index', :as => :dashboard

  get 'home/index'
  resources :user_stories

  # delete 'project' => 'projects#destroy'
  resources :password_resets

  resources :projects do
    resources :user_stories
  end

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
