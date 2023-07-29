class CreateGamehastuffs < ActiveRecord::Migration[7.0]
  def change
    create_table :gamehastuffs do |t|
      t.integer :game_id
      t.integer :stuff_id

      t.timestamps
    end
  end
end
