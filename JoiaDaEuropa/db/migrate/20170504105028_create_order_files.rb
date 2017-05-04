class CreateOrderFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :order_files do |t|
      t.string :name
      t.string :type
      t.string :path

      t.timestamps
    end
  end
end
