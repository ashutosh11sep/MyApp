class NodesController < ApplicationController
def show
    @node = Node.find(params[:id])
  end

def new
  end

  def create
  @node = Node.new(node_params)
 
  @node.save
  redirect_to @node
end
private
  def node_params
    params.require(:node).permit(:node_name, :place_id)
  end
end
