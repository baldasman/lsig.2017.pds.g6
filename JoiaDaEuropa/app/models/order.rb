class Order < ApplicationRecord
    belongs_to :user
    belongs_to :order_state
    belongs_to :order_file
    validates :price, presence: true

end
