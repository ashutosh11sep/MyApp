class ImagesController < ApplicationController

def index
    @images = Image.all
  end
def show
    @image = Image.find(params[:id])
  end

def new
  end
def edit
  @images = Image.find(params[:id])
end
  def create
  @image = Image.new(image_params)
 
  @image.save
  redirect_to @image
end

def update
  @image = Image.find(params[:id])
 
  if @image.update(image_params)
    redirect_to @image
  else
    render 'edit'
  end
end
private
  def image_params
    params.require(:image).permit(:user_id, :real_name, :image_name,)
  end
end
