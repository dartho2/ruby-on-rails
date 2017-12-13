class ProductOrder < ApplicationRecord

  belongs_to :product, optional: :product_order, inverse_of: :product_order
  belongs_to :order, optional: :product_order, inverse_of: :product_order








end
