class CreateOrderStates < ActiveRecord::Migration[5.0]
  def change
    create_table :order_states do |t|
      t.string :description

      t.timestamps
    end
  end
end
