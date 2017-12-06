class ProductOrdersController < ApplicationController
  def index
    @product_order = ProductOrder.all
  end
end
