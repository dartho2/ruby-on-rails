class OrdersController < ApplicationController

  #   przy tworzeniu orderu tworzy nowy produkt - brak aktualizacji produktu
  #
  #
  #
  #


  # skip_before_action :verify_authenticity_token

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @order.build_customer


  end

  def create
    # @product = Order.new(params[:id])
    # @product_order = @orders.map{|r| @order.product_order.build}
    # @product = Product.new(update_params_order(params[:id]))

    @order = Order.new(params_order)
    # @product = Product.new(params_update(:id))

    if @order.save
      flash[:warning] = "Correct Create- "
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

  def update
    @order = Order.find(params[:id])
    # @product = Order.new(update_params(params[:id]))

    if @order.update(params_order)
      flash[:success] = "Produkt  - został zaktualizowany"
      redirect_to products_path
    else
      flash[:warning] = "Błąd aktualizacji -  "
      render 'new'
    end
  end


  private
  def params_order
    params.require(:order)
      .permit([customer_attributes: [:id, :name], product_order_attributes: [:id, :quantity, product_attributes: [:id, :parent_id, :name, :price,]]])
  end


end
