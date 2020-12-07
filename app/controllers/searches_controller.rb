class SearchesController < ApplicationController
  def new
    @search = Search.new
    @colors = Product.distinct.pluck(:color)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:keywords, :color, :set, :min_price, :max_price)
  end
end
