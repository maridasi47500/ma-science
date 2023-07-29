class CreateGamehasstuffhaspic < ActiveRecord::Migration[7.0]
  def change
    create_table :gamehasstuffhaspics do |t|
      t.integer :game_id
      t.integer :mystuffhaspic_id

      t.timestamps
    end
  end
end
