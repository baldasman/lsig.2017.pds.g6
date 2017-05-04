class OrdersAction < ApplicationRecord
  belongs_to :reports_type
  has_many :orders
end
