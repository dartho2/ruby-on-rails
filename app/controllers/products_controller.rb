class ProductsController < ApplicationController


  def index
    @products = []
    products = Product.all
    products.each do |product|
      @products.push(product) unless Product.where(parent_id: product.id).any?
    end
  end

  def new
    @product = Product.new
    @product.build_category
  end
  def destroy
    @product = Product.find(params[:id]).delete
    redirect_to products_path
  end
  def edit
    
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      flash.now[:alert] = "Nie utworzono Produktu"
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :id, :price, :category_id,)
  end


end
