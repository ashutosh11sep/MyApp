class PagesController < ApplicationController
def show
    @page = Page.find(params[:id])
  end
def create
  @page = Page.new(page_params)
 
  @page.save
  redirect_to @page
end
private
  def page_params
    params.require(:page).permit(:title, :site_id, :descrption)
      end
end
