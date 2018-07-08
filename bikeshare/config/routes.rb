Rails.application.routes.draw do
  resources :user_sessions
  resources :bikes
  resources :rides
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "login", :to => "user_sessions#new"
  get "logout", :to => "user_sessions#destroy"

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do

      get 'users/login', :to => 'users#login'

      get 'bikes/:token', :to => 'bikes#index'
      get 'bikes/available/:token', :to => 'bikes#available'
      get 'bikes/near/:token/:latitude/:longitude/:distance', :to => 'bikes#near', constraints: { longitude: /[^\/]+/, latitude: /[^\/]+/, distance: /[^\/]+/ }
      get 'bikes/:token/:bike_code', :to => 'bikes#search'

      get 'rides/:token/', :to => 'rides#index'
      get 'rides/:token/:id', :to =>'rides#show'
      end
    end
  end
