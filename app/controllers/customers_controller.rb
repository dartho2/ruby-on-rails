class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "Update #{@customer.name}"
      redirect_to customers_path
    else
      flash[:warning] = "Doesn't Update"
      render 'new'
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = "Create #{@customer.name}"
      redirect_to customers_path
    else
      flash[:warning] = "Some Problem with Created"
      render 'new'
    end
  end

  def destroy
    if @customer = Customer.find(params[:id]).destroy
      if @customer.destroy
        flash[:success] = "Usunieto użytkownika #{@customer.name}"
        redirect_to customers_path
      else
      end
    else
      flash[:success] ="Customer exists in Order #{@customer.id}"
      redirect_to customers_path
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:name)
  end
end
