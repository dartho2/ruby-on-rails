class ProductOrder < ApplicationRecord

  belongs_to :product, inverse_of: :product_order, optional: :product_order
  belongs_to :order, inverse_of: :product_order, optional: :product_order








end
