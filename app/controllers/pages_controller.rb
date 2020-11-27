class PagesController < InheritedResources::Base
  def page_params
    params.require(:page).permit(:title, :content, :permalink)
  end

  def index
    @pages = Page.all
  end

  def permalink
    @page = Page.find_by(permalink: params[:permalink])
  end

  def new
    @page = Page.new
  end
end
