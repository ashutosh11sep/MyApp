class CompaniesController < ApplicationController


def index
    @companies = Company.all
  end

def show
    @company = Company.find(params[:id])
  end

def new
end

def edit
  @companies = Company.find(params[:id])
end

def create
  @company = Company.new(company_params)
 
  @company.save
  redirect_to @company
end

def update
  @company = Company.find(params[:id])
 
  if @company.update(company_params)
    redirect_to @company
  else
    render 'edit'
  end
end

def destroy
  @company = Company.find(params[:id])
  @company.destroy
 
  redirect_to companies_path
end
 
private
  def company_params
    params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postcode, :startdate, :active, :company_image, :profile_image)
  end
end
