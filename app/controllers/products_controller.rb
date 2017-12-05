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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product = Product.new(update_params)

    if @product.update(product_params)
      flash[:success] = "Produkt - #{@product.name}  -został zaktualizowany"
      redirect_to products_path
    else
      flash[:warning] = "Błąd aktualizacji - #{@product.name} "
      redirect_to products_path
    end
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      flash.now[:warning] = "Nie utworzono Produktu"
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :id, :parent_id, :price, :category_id,)
  end

  def update_params
    params.require(:product).permit(:name, :id, :parent_id, :price, :category_id,).merge(parent_id: @product.id)
  end

end
