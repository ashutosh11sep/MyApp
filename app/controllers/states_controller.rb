class StatesController < ApplicationController
def index
    @states = State.all
  end
def show
    @state = State.find(params[:id])
  end

def new
  end
  def edit
  @states = State.find(params[:id])
end

  def create
  @state = State.new(state_params)
 
  @state.save
  redirect_to @state
end

def update
  @state = State.find(params[:id])
 
  if @state.update(state_params)
    redirect_to @state
  else
    render 'edit'
  end
end

def destroy
  @state = State.find(params[:id])
  @state.destroy
 
  redirect_to states_path
end
private
  def state_params
    params.require(:state).permit(:state_name)
  end
end