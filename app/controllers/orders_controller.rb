class OrdersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @orders = Order.all
  end

  def new
    @order= Order.new
    @order.build_customer
  end

  def create
  @order = Order.new(params_order)
  if @order.save

      flash[:warning] = "Correct Create - #{@order.customer.name}"
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
    params.require(:order).permit(:id, customer_attributes: [:name])
  end
end

