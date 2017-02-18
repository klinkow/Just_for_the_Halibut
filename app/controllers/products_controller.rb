class ProductsController < ApplicationController
  def index
    @products = Product.all


  end

  def show
    @product = Product.find(params[:id])

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product added."
      redirect_to  products_path
    else
      render :new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product updated."
      redirect_to products_path
    else
      render :edit
    end
  end

  def about
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product deleted."
    redirect_to products_path
  end
end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
