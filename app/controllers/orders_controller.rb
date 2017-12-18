class OrdersController < ApplicationController

  #   przy tworzeniu orderu tworzy nowy produkt - brak aktualizacji produktu
  #
  #
  #
  #


  # skip_before_action :verify_authenticity_token

  def index
    @orders = Order.all
    # @product = Product.all  TODO usunac
    # @product_order = ProductOrder.all TODO usunac
    # total_price TODO usunac
  end


  def new
    @order = Order.new
    @order.build_customer
  end

  def create
    @order = Order.new(params_order)

    if @order.save
      flash[:warning] = "Correct Create- "
      render 'edit'
    else
      flash[:warning] = "Incorrect Create"
      render 'edit'
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

    if @order.update_attributes(params_order)
      flash[:success] = "Produkt  - został zaktualizowany #{@order.product.inspect} "
      render 'edit'
    else
      flash[:warning] = "Błąd aktualizacji - #{@product.inspect}} "
      render 'edit'
    end
    end



  private
  def params_order
    params.require(:order)
      .permit([customer_attributes: [:id, :name], product_order_attributes: [:id, :quantity, product_attributes: [:id, :name, :price,]]])
  end
  def params_orderss
    params.require(:order)
      .permit(:id, :name, :price)
  end
 end
