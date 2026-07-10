Rails.application.routes.draw do
  root to: 'users#index'
 
  get 'users/new', to: 'users#new'
  get 'users/show'
  get 'users/edit'
  post 'users', to: 'users#create'
 
  get "up" => "rails/health#show", as: :rails_health_check
# config/routes.rb 
  # これが書かれていると user_path が自動的に作られます
  resources :users

end