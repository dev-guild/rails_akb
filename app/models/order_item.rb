class OrderItem < ApplicationRecord
    belongs_to :products, :orders
    # belongs_to :orders
end
