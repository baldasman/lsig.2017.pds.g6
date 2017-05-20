class OrderFile < ApplicationRecord
  has_many :orders
  has_one :order
end
