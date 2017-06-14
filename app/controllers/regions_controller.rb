class RegionsController < ApplicationController
def index
    @regions = Region.all
  end
def show
    @region = Region.find(params[:id])
  end

def new
  end
def edit
  @regions = Region.find(params[:id])
end
  def create
  @region = Region.new(region_params)
 
  @region.save
  redirect_to @region
end

def update
  @region = Region.find(params[:id])
 
  if @region.update(region_params)
    redirect_to @region
  else
    render 'edit'
  end
end
private
  def region_params
    params.require(:region).permit(:region_name)
  end
end

