class SitesController < ApplicationController

def show
    @site = Site.find(params[:id])
  end
def create
  @site = Site.new(site_params)
 
  @site.save
  redirect_to @site
end
private
  def site_params
    params.require(:site).permit(:site_url, :name)
      end
end

