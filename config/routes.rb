Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/shop', to: 'products#index'
  get '/shop/:id', to: 'products#show'
  get '/users/:id/orders', to: 'orders#index'
  get '/users/:id/orders/:id', to: 'orders#show'
  post '/orders', to: 'orders#create'
  put '/orders/:id', to: 'orders#update'

  # Defines the root path route ("/")
  # root "articles#index"
end
