class Order < ApplicationRecord
  belongs_to :customer
  has_many :product_order
  accepts_nested_attributes_for :customer
end
