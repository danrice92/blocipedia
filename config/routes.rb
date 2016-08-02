Rails.application.routes.draw do
  
  resources :wikis

  get 'about' => 'welcome#about'

  root 'welcome#index'
  
  devise_for :users, controllers: { sessions: 'users/sessions' }
  
end
