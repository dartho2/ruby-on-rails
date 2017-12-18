class Product < ApplicationRecord

  before_update :cipka


  # validates :name,
  #           presence: true,
  #           length: {minimum: 3}
  # validates :price,
  #           presence: true,
  #           numericality: {only_integer: true, greater_than: 0}

  #  belongs_to :category
  #
  #   nie można utworzyc orderu  kiedy jest.. ##TODO


  has_many :product_order, inverse_of: :product, class_name: "ProductOrder"
  has_many :order, through: :product_order, inverse_of: :product

  accepts_nested_attributes_for :product_order

  private
  def cipka
    product = Product.find(self.id)
    if (self.price == product.price)

    else
      puts self.price
      puts product.price
     Product.find(self.id).update(deleted: true)
        product = Product.create(name: self.name, parent_id: product.id, price: self.price)
        product.save

        end
      end
end

