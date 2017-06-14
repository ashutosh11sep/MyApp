class CitiesController < ApplicationController

def index
    @cities = City.all
  end
def show
    @city = City.find(params[:id])
  end

def new
  end
  def edit
  @cities = City.find(params[:id])
end

  def create
  @city = City.new(city_params)
 
  @city.save
  redirect_to @city
end

def update
  @city = City.find(params[:id])
 
  if @city.update(city_params)
    redirect_to @city
  else
    render 'edit'
  end
end
private
  def city_params
    params.require(:city).permit(:city_name)
  end
end
