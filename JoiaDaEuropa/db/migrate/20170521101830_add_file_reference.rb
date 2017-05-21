class AddFileReference < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :order_file
  end
end
