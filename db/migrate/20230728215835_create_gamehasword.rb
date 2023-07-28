class CreateGamehasword < ActiveRecord::Migration[7.0]
  def change
    create_table :gamehaswords do |t|
      t.integer :game_id
      t.string :text

      t.timestamps
    end
  end
end
