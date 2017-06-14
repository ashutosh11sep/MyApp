class UserRolesController < ApplicationController
def index
    @user_roles = UserRole.all
  end

def show
    @user_role = UserRole.find(params[:id])
  end
def new
  end

def edit
  @user_roles = UserRole.find(params[:id])
end
  def create
  @user_role = UserRole.new(user_role_params)
 
  @user_role.save
  redirect_to @user_role
end

def update
  @user_role = UserRole.find(params[:id])
 
  if @user_role.update(user_role_params)
    redirect_to @user_role
  else
    render 'edit'
  end
end
private
  def user_role_params
    params.require(:user_role).permit(:role_name)
  end
end


