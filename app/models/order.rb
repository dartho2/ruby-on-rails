class Order < ApplicationRecord
attr_accessor :quantity
  belongs_to :customer, inverse_of: :order
  has_many :product_order, inverse_of: :order, class_name: 'ProductOrder'
  has_many :product, through: :product_order, inverse_of: :order, class_name: 'Product'
  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :product_order

def total_price
  @total_price ||= product_order.includes(:product).reduce(0) do |sum, a|
    sum + (a.quantity * a.product.price)
  end
end
end
``

