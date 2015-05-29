Rails.application.routes.draw do
  resources :newsletter, only: [:new, :create]

  get 'pages/index'
  root 'pages#index'
  get '/about', to: 'pages#about'
end