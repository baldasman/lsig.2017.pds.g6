class PopulateOrderStates < ActiveRecord::Migration[5.0]

    def up

        OrderState.delete_all

        OrderState.create id: 1, internal_description: 'order_state.pending', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 2, internal_description: 'order_state.cancelled', created_at: Time.now, updated_at: Time.now
        OrderState.create id: 3, internal_description: 'order_state.concluded', created_at: Time.now, updated_at: Time.now

    end

    def down

        OrderState.delete([1, 2, 3])

    end

end
