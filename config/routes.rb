Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'
  get '/about', to: 'pages#about'
  get '/signup', to: 'pages#signup'
  get '/productreviews', to: 'pages#productreviews'
end