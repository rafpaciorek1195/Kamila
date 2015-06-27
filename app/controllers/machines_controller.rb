class MachinesController < ApplicationController
  before_action :find_machine, only: [:show, :edit, :destroy, :update]

  def index
    @machines = Machine.all
  end

  def show
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
  end

  def destroy
    if @machine.destroy
      redirect_to machines_path
    else
      render :show
    end
  end

  def update
    if @machine.update(_params)
      redirect_to machines_path
    else
      render :edit
    end
  end

  private

  def _params
    params.require(:machine).permit(:Type, :Brand, :Model, :Year, :Description)
  end

  def find_machine
    @machine = Machine.find(params[:id])
  end
end
