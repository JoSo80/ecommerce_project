class ApplicationController < ActionController::Base
  helper_method :cms_pages
  #include Pagy::Backend

  def cms_pages
    Page.all
  end
end
