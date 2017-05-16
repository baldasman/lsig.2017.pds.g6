class Order < ApplicationRecord
    belongs_to :user
    belongs_to :order_state

    validates :price, presence: true

end
