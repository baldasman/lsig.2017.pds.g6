class CreateOrdersActions < ActiveRecord::Migration[5.0]
  def change
    create_table :orders_actions do |t|
      t.datetime :date
      t.string :obs

      t.timestamps
    end
  end
end
