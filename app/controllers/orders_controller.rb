class OrdersController < ApplicationController

  #   przy tworzeniu orderu tworzy nowy produkt - brak aktualizacji produktu
  #
  #
  #
  #


  skip_before_action :verify_authenticity_token

  def index
    @orders = Order.all

  end

  def new
    # @product = Product.new(params[:id])
    @order = Order.new
    # @order.product_order.build
    @order.product.build
    @order.build_customer
# 3.times { @order.product.build }

  end

  def create
    @order = Order.create(params_order)

    if @order.save

      flash[:warning] = "Correct Create - #{@order.customer.name} - #{@order.product.name}"
      redirect_to orders_path
    else
      flash[:warning] = "Incorrect Create"
      render 'new'
    end
  end

  def destroy
    @order = Order.find(params[:id]).delete

    # usuniecie order wraz z customer

    redirect_to orders_path
  end

  def edit
    @order = Order.find(params[:id])
  end

  private
  def params_order
    params.require(:order)
      .permit(:id, customer_attributes: [:name], product_attributes: [:name, :price], category: [:category_id])
  end

end

