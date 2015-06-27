class MachinesController < ApplicationController

  def index
    @machines = Machine.all
  end

  def show
    @machine = Machine.find(params[:id])
  end

  def new
    @machine = Machine.new
  end

  def create
    @machine = Machine.new(_params)
    if @machine.save
      redirect_to machines_path
    else
      render 'machine'
    end
  end

  def edit
    @machine = Machine.find(params[:id])
  end

  def destroy
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
  end

  private

  def _params
    params.require(:machine).permit(:Type, :Brand, :Model, :Year, :Description)
  end
end
