class ProductsController < ApplicationController
  def index
    @products = Product.order(params[:id])
    #@pagy, @products = pagy(Products.all)
  end

  def show
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
