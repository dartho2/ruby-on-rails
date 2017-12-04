class ProductsController < ApplicationController
  def index
    @products = []
    products = Product.all

    products.each do |product|
      @products.push(product) unless Product.where(parent_id: product.id).any?
    end

  end
end
