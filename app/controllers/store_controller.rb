class StoreController < ApplicationController
  def index
    @products = Product.all
    @cart = current_cart
  end

  def show
    @products = Product.find(params[:id])
    

  end
end
