class AddAssociations < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :order_state, index: true
    add_reference :order_files, :order, index: true
    add_reference :orders_actions, :reports_type, index: true
    add_reference :orders_actions, :order, index: true

  end
end
