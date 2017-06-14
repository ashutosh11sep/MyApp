class PlacesController < ApplicationController

def index
    @places = Place.all
  end
def show
    @place = Place.find(params[:id])
  end

def new
  end
  def edit
  @places = Place.find(params[:id])
end

  def create
  @place = Place.new(place_params)
 
  @place.save
  redirect_to @place
end

def update
  @place = Place.find(params[:id])
 
  if @place.update(place_params)
    redirect_to @place
  else
    render 'edit'
  end
end
private
  def place_params
    params.require(:place).permit(:place_name, :company_id)
  end
end
