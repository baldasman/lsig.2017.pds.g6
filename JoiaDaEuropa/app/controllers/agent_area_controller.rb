class AgentAreaController < ApplicationController
  layout 'agent_area_layout'



  def view_order

    @order = Order.find_by(id: params[:order_id])

  end



  def index
    @user = current_user
  end



  def pending_orders

    @order = Order.all
    @orders = @order.where(order_state_id: '1')

  end



  def cancelled_orders

    @order = Order.all
    @orders = @order.where(order_state_id: '2')

  end



  def concluded_orders

    @order = Order.all
    @orders = @order.where(order_state_id: '3')

  end



  def approved_orders

    @order = Order.all
    @orders = @order.where(order_state_id: '4')

  end



  def all_orders

    @orders = Order.all


  end


  def approve_order

    @order = Order.find_by(id: params[:order_id])
    @order.order_state_id = '4'
    @order.save

  end


  def cancel_order

    @order = Order.find_by(id: params[:order_id])
    @order.order_state_id = '2'
    @order.save

  end


  def complete_order

    @order = Order.find_by(id: params[:order_id])
    @order.order_state_id = '3'
    @order.save

  end
end
