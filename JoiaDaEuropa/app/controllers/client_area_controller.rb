require 'securerandom'

class ClientAreaController < ApplicationController

    def index

        @account = current_user

    end



    def new_order

        @order = Order.new

    end



    def view_order

        @order = Order.find_by(id: params[:order_id])

    end



    def destroy_order

        @order = Order.find_by(id: params[:order_id])
        @order.destroy

        redirect_to client_area_all_orders_path

    end



    def edit_order

        @order = Order.find_by(id: params[:order_id])

    end

    def save_order

        _order = params[:order]

        if _order[:id].to_i > 0
            @order = Order.find_by(id: _order[:id])
        else
            @order = Order.new user_id: current_user.id, order_state_id: 1
        end

        @order.obs = _order[:obs]
        @order.price = _order[:price]
        @order.delivery_date = _order[:delivery_date]
        @order.order_state_id = '1'

        # save uploaded file
        uploaded_io = params[:order][:upload]

        if uploaded_io.present?
            _filename = SecureRandom.hex + '_' + uploaded_io.original_filename
            @order.order_file = OrderFile.new path: _filename

            File.open(Rails.root.join('public', 'uploads', _filename), 'wb') do |file|
                file.write(uploaded_io.read)
            end
        end

        if @order.save
            redirect_to(client_area_view_order_path(@order.id))
        else
            redirect_to client_area_new_order_path
        end

    end


    def all_orders

        @account = current_user.id
        @orders = Order.where(user_id: @account)

    end


    def pending_orders

        @account = current_user.id
        @order = Order.where(user_id: @account)
        @orders = @order.where(order_state_id: '1')

    end




    def approved_orders

        @account = current_user.id
        @order = Order.where(user_id: @account)
        @orders = @order.where(order_state_id: '4')

    end


    def cancelled_orders

        @account = current_user.id
        @order = Order.where(user_id: @account)
        @orders = Order.where(order_state_id: '2')

    end


    def concluded_orders

        @account = current_user.id
        @order = Order.where(user_id: @account)
        @orders = Order.where(order_state_id: '3')

    end
end

