class ProductOrder < ApplicationRecord

  belongs_to :product, inverse_of: :product_order, optional: true, class_name: 'Product'
  belongs_to :order, inverse_of: :product_order, optional: true

  accepts_nested_attributes_for :product

  def product_attributes=(attributes)
    if attributes['id'].present?
      self.product = Product.find(attributes['id'])
    end
    super
  end
end


