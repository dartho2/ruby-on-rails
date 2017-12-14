class Order < ApplicationRecord
attr_accessor :price, :quantity
  belongs_to :customer, inverse_of: :order
  has_many :product_order, inverse_of: :order, class_name: 'ProductOrder'
  has_many :product, through: :product_order, inverse_of: :order, class_name: 'Product'
  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :product_order


end
``

