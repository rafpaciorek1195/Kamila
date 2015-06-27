class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :Type
      t.string :Brand
      t.string :Model
      t.string :Year
      t.text :Description

      t.timestamps null: false
    end
  end
end
