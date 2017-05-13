class ClientAreaController < ApplicationController

  def index
    @account = current_user
  end

  def new_order
    @order = order.new(params.require(:order).permit(:price, :delivery_date))

    @order.save
    redirect_to @order

  end

  def save_order
    @order = order


  end

  def all_orders


  end


end


