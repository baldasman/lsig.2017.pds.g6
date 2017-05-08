Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/home/index'
  get '/client_area/index'
  post '/client_area/index'

  root to: 'home#index'
end

