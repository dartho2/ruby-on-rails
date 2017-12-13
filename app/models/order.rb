class Order < ApplicationRecord

  belongs_to :customer
  has_many :product_order
  has_many :product, through: :product_order, source: :product, :class_name => "Product"
  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :product




end


