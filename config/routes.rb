Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  resources :bands

  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: "user_sessions#create"
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
