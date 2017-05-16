class ClientAreaController < ApplicationController

    def index

        @account = current_user

    end

    def new_order

        @order = Order.new

    end

    def save_order

        _order = params[:order]

        @order = Order.new user_id: current_user.id, order_state_id: 1
        @order.obs = _order[:obs]
        @order.price = _order[:price]
        @order.delivery_date = _order[:delivery_date]

        if @order.save
            redirect_to(client_area_all_orders_path, :notice => 'Order was successfully created')
        else
            render :action => "new_order"
        end

    end

    def all_orders

        @orders = Order.all

    end

end

