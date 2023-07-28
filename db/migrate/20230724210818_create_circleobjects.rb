class CreateCircleobjects < ActiveRecord::Migration[7.0]
  def change
    create_table :circleobjects do |t|
      t.integer :game_id
      t.integer :image_id
      t.boolean :mycond

      t.timestamps
    end
  end
end
