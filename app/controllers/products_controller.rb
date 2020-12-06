class ProductsController < ApplicationController
  def index
    @products = if params[:product] && params[:product][:category_id]
                  Product.search(params[:product][:category_id])
                else
                  Product.all
                end
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
