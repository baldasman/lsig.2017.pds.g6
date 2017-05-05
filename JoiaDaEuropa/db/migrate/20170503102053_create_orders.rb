-class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :delivery_date
      t.decimal :price, precision: 2
      t.string :obs

      t.timestamps
    end
  end
end
