class Order < ApplicationRecord
  belongs_to :customer
  has_many :product_order, inverse_of: :order
  has_many :product, through: :product_order
  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :product_order
  accepts_nested_attributes_for :product



end


