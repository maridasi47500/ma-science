class CreateCrossorticks < ActiveRecord::Migration[7.0]
  def change
    create_table :crossorticks do |t|
      t.integer :game_id
      t.integer :image_id
      t.boolean :ok

      t.timestamps
    end
  end
end
