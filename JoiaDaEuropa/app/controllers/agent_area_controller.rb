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



  def all_orders

    @orders = Order.all


  end
end
