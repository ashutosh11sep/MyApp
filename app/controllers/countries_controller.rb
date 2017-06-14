class CountriesController < ApplicationController

def index
    @countries = Country.all
  end
def show
    @country = Country.find(params[:id])
  end

def new
  end

def edit
  @countries = Country.find(params[:id])
end
  def create
  @country = Country.new(country_params)
 
  @country.save
  redirect_to @country
end

def update
  @country = Country.find(params[:id])
 
  if @country.update(country_params)
    redirect_to @country
  else
    render 'edit'
  end
end
private
  def country_params
    params.require(:country).permit(:country_name)
  end
end

