Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/home/index'
  get '/client_area/index'
  post '/client_area/index'
  get '/client_area/new_order'
  get '/client_area/save_order'
  get '/home/QuemSomos'
  get '/home/Missao'
  get '/client_area/all_orders'
  post '/client_area/save_order'
  get '/agent_area/index'

  get '/client_area/view_order/:order_id', to: 'client_area#view_order', as: 'client_area_view_order'

  root to: 'home#index'

end

