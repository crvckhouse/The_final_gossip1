  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

Rails.application.routes.draw do
  resources :comments
  root to: 'static_pages#home'
  get '/welcome(/:name)', to: 'static_pages#home'

  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  resources :gossips
  

end
