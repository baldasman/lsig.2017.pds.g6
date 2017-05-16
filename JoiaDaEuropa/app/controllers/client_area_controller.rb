class ClientAreaController < ApplicationController
  before_action if User.find_by_is_client(1)
  def index
    @account = current_user
  end

  def new_order
    @order = Order.new

    respond_to do |f|
      f.html

    end

  end
  def save_order
    @order = Order.new

    _order = params[:order]
    @order.order_state_id = 1
    @order.obs = _order[:obs]
    @order.price = _order[:price]
    @order.delivery_date = _order[:delivery_date]

    if @order.save
        redirect_to(@orders, :notice => 'Order was successfully created')
      else

      render :action => "new_order"
    end
  end
  def all_orders

  @orders = Order.all


  respond_to do |format|
    format.html
    format.xml
  end
  end

  def order_params
    params
  end
  end

