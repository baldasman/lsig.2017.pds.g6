class ClientAreaController < ApplicationController
  before_action if User.find_by_is_client(1)
  def index
    @account = current_user
  end

  def new_order
    @orders = Order.new

    respond_to do |f|
      f.html
      f.xml
    end

  end
  def save_order
    @orders = Order.new(params[:price][:obs][:delivery_date])

    respond_to do |f|
      if @orders.save
        f.html { redirect_to(@orders, :notice => 'Student was successfully created') }
      else
        f.html { render :action => "new" }
      end
  end
  end
  def all_orders

  @orders = Order.all


  respond_to do |format|
    format.html
    format.xml
  end
  end
end







