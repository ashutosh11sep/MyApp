class UserRegionsController < ApplicationController
def index
    @user_regions = UserRegion.all
  end
def show
    @user_region = UserRegion.find(params[:id])
  end

def new
  end
def edit
  @user_regions = UserRegion.find(params[:id])
end
def create
  @user_region = UserRegion.new(user_region_params)
 
  @user_region.save
  redirect_to @user_region
end

def update
  @user_region = UserRegion.find(params[:id])
 
  if @user_region.update(user_region_params)
    redirect_to @user_region
  else
    render 'edit'
  end
end

private
  def user_region_params
    params.require(:user_region).permit(:user_id, :region_id)
  end
end
