Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/shop', to: 'products#index'
  get '/shop/:id', to: 'products#show'
  post '/orders/submit', to: 'orders#submit'


  # Defines the root path route ("/")
  # root "articles#index"
end
