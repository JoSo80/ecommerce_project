class ApplicationController < ActionController::Base
  helper_method :cms_pages
  helper_method :cart
  before_action :authenticate_user!, only: [:show]
  before_action :initialize_session
  skip_before_action :authenticate_user!, only: [:admin_users]
  # include Pagy::Backend

  def cms_pages
    Page.all
  end

  def initialize_session
    session[:shopping_cart] ||= []
  end

  def cart
    Product.find(session[:shopping_cart])
  end
end
