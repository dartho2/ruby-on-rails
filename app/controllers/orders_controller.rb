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

  def update
    @order = Order.find(params[:id])
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
      .permit([customer_attributes: [:name], product_attributes: [:name, :price, product_order_attributes: [:quantity]]])
    # params.require(:order).permit(customer_attributes: [Customer.attribute_names.map(&:to_sym)], product_attributes: [Product.attribute_names.map(&:to_sym), product_order_attributes:[ProductOrder.attribute_names.map(&:to_sym)]])
  end


end
