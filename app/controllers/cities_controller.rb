class CitiesController < ApplicationController

def show
    @city = City.find(params[:id])
  end

def new
  end

  def create
  @city = City.new(city_params)
 
  @city.save
  redirect_to @city
end
private
  def city_params
    params.require(:city).permit(:city_name)
  end
end
