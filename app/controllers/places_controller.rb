class PlacesController < ApplicationController

def show
    @place = Place.find(params[:id])
  end

def new
  end

  def create
  @place = Place.new(place_params)
 
  @place.save
  redirect_to @place
end
private
  def place_params
    params.require(:place).permit(:place_name, :company_id)
  end
end
