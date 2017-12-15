class Product < ApplicationRecord
  validates :name,
            presence: true,
            length: {minimum: 3}
  validates :price,
            presence: true,
            numericality: {only_integer: true, greater_than: 0}

#  belongs_to :category
#
#   nie można utworzyc orderu  kiedy jest.. ##TODO


  has_many :product_order, inverse_of: :product, class_name: "ProductOrder"
  has_many :order, through: :product_order, inverse_of: :product

  accepts_nested_attributes_for :product_order
end
