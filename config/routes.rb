Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/index'

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'home/about'
  #root "home#index"
  root "friends#index"
end
