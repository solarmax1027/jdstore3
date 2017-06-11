class User::ProductsController < ApplicationController
  layout "user"
  before_action :authenticate_user!
  before_action :find_product_and_check_permission, only: [:edit, :update, :destroy]



def index
 @products = current_user.products
end



def new
    @product = Product.new
  end

  def edit

  end

  def update

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


    @product.destroy
    redirect_to products_path alert: 'product delete'
  end

  private

  def find_product_and_check_permission
    @product = Product.find(params[:id])

    if current_user != @product.user
      redirect_to root_path, alert: "You have no permission."
    end
  end

  def product_params
    params.require(:product).permit(:title, :cookname, :location, :province, :city, :district, :description, :quantity, :price, :image)
  end
end
