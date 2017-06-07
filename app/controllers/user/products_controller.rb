class User::ProductsController < ApplicationController
  layout "user"
  before_action :authenticate_user!




def index
 @products = Product.all
end



def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])

    if current_user != @product.user
      redirect_to root_path, alert: "You have no permission."
    end
  end

  def update
    @product = Product.find(params[:id])

    if current_user != @product.user
      redirect_to root_path, alert: "You have no permission."
    end

    if @product.update(product_params)
      redirect_to user_products_path
    else
      render :edit
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to user_products_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path alert: 'product delete'
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :quantity, :price, :image)
  end
end
