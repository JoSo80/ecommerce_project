class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
