class CustomersController < ApplicationController
  before_action :require_user_admin
  def index
    @customer = Customer.where(deleted: false)
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
    Customer.find(params[:id]).update(deleted: true)

    flash[:success] = "Usunieto użytkownika"
    redirect_to customers_path
  end


  private

  def customer_params
    params.require(:customer).permit(:name)
  end

end
