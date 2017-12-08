class Order < ApplicationRecord
  belongs_to :customer
  has_many :product_order
  has_many :category
  has_many :product, through: :product_order
  accepts_nested_attributes_for :customer
  accepts_nested_attributes_for :product_order
  accepts_nested_attributes_for :product
  accepts_nested_attributes_for :category
end
