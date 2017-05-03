class CreateNewOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :new_orders do |t|

      t.timestamps
    end
  end
end
