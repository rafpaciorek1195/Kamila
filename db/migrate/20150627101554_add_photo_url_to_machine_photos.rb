class AddPhotoUrlToMachinePhotos < ActiveRecord::Migration
  def up
    add_column :machine_photos, :photo_url, :string
  end

  def down
    remove_column :machine_photos, :photo_url
  end
end
