Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/profile/index'
  get '/home/index'
  get '/client_area/index'
  post '/client_area/index'
  get '/client_area/new_order'
  get '/client_area/save_order'

  get '/client_area/all_orders'
  get '/client_area/pending_orders'
  get '/client_area/cancelled_orders'
  get '/client_area/concluded_orders'

  get '/agent_area/index'
  get '/agent_area/pending_orders'
  get '/agent_area/approved_orders'
  get '/agent_area/cancelled_orders'
  get '/agent_area/concluded_orders'
  get '/agent_area/all_orders'


  get '/agent_area/view_order/:order_id', to: 'agent_area#view_order', as: 'agent_area_view_order'

  get '/client_area/view_order/:order_id', to: 'client_area#view_order', as: 'client_area_view_order'
  get '/client_area/edit_order/:order_id', to: 'client_area#edit_order', as: 'client_area_edit_order'

  post '/client_area/save_order'
  post '/client_area/destroy_order'
  post '/agent_area/approve_order'
  post '/agent_area/cancel_order'
  post '/agent_area/complete_order'

  root to: 'home#index'

end

