Rails.application.routes.draw do
  devise_for :users
  get 'products/index'
  get 'pages/index'
  root 'pages#index'
  get '/about', to: 'pages#about'
  get '/signup', to: 'pages#signup'
  get '/productreviews', to: 'pages#productreviews'
  resources :services, only: [:index]
  resources :products, only: [:index] do
    collection do
      match 'clothing', via: [:get]
      match 'outdoor',  via: [:get]
      match 'tools',    via: [:get]
      match 'decor',    via: [:get]
      match 'webapps',  via: [:get]
      match 'reviews',  via: [:get]
    end
  end
  resources :blogs
end
