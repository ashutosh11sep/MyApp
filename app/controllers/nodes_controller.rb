class NodesController < ApplicationController
def index
    @nodes = Node.all
  end
def show
    @node = Node.find(params[:id])
  end

def new
  end
  def edit
  @nodes = Node.find(params[:id])
end

  def create
  @node = Node.new(node_params)
 
  @node.save
  redirect_to @node
end

def update
  @node = Node.find(params[:id])
 
  if @node.update(node_params)
    redirect_to @node
  else
    render 'edit'
  end
end
private
  def node_params
    params.require(:node).permit(:node_name, :place_id)
  end
end
