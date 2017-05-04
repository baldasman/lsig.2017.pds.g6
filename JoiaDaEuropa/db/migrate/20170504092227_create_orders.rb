class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.datetime :delivery_date
      t.string :obs

      t.timestamps
    end
  end
end
