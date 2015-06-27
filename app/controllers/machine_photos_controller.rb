class MachinePhotosController < ApplicationController
  def new
    @machine_photo = MachinePhoto.new
  end

  def create
    @machine_photo = MachinePhoto.new(machine_photo_params)
    if @machine_photo.save
      redirect_to machine_path(machine_photo_params[:machine_id])
    else
      render @machine_photo
    end
  end

  def index
    @machine_photos = MachinePhoto.all
  end

  private
  def machine_photo_params
    params.require(:machine_photo).permit(:photo_url, :machine_id)
  end
end
