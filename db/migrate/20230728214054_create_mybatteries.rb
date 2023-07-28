class CreateMybatteries < ActiveRecord::Migration[7.0]
  def change
    create_table :mybatteries do |t|
      t.integer :game_id
      t.integer :mystuffhaspic_id

      t.timestamps
    end
  end
end
