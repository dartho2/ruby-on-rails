class ProductOrdersController < ApplicationController
  before_action :require_user_admin
  def index
    @product_order = ProductOrder.all
  end
end


