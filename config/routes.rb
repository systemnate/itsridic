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
      match 'black_touchscreen_glove', via: [:get]
      match 'white_touchscreen_glove', via: [:get]
      match 'colored_touchscreen_glove', via: [:get]
      match 'record_breaker', via: [:get]
      match 'record_staller', via: [:get]
      match 'round_pop', via: [:get]
      match 'spiral', via: [:get]
    end
  end
  resources :blogs
  resources :tags
end
