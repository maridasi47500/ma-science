class CreateMystuffhaspics < ActiveRecord::Migration[7.0]
  def change
    create_table :mystuffhaspics do |t|
      t.integer :stuff_id
      t.integer :image_id

      t.timestamps
    end
  end
end
