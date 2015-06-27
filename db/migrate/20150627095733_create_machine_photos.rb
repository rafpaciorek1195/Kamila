class CreateMachinePhotos < ActiveRecord::Migration
  def change
    create_table :machine_photos do |t|
      t.integer :machine_id
      t.timestamps null: false   
    end
    add_index :machine_photos, :machine_id

  end
end
