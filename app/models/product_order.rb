class ProductOrder < ApplicationRecord
  belongs_to :product, inverse_of: :product_order, :optional => true
  belongs_to :order, inverse_of: :product_order, :optional => true



end
