class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    @products = Product.all
    @cart = current_cart
  end

  def show
    @products = Product.find(params[:id])
    

  end
end
