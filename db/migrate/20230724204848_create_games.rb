class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :myscience_id
      t.string :title
      t.text :content
      t.text :description

      t.timestamps
    end
  end
end
