class ProductOrder < ApplicationRecord

  belongs_to :product
  belongs_to :order, inverse_of: :product_order, optional: true


  accepts_nested_attributes_for :product






end
