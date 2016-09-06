Rails.application.routes.draw do
  get 'about' => 'welcome#about'
  root 'welcome#index'
  
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :wikis

  resources :charges, only: [:new, :create]
  resources :downgrade, only: [:new, :create]
  post 'downgrade/create'
  
end