class CreateMaterialsImages < ActiveRecord::Migration[7.0]
  def change
    create_table :materials_images do |t|
      t.integer :material_id
      t.integer :image_id

      t.timestamps
    end
  end
end
