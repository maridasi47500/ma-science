class CreateGamehasmaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :gamehasmaterials do |t|
      t.integer :game_id
      t.integer :materials_image_id

      t.timestamps
    end
  end
end
