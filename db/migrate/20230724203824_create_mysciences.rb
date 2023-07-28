class CreateMysciences < ActiveRecord::Migration[7.0]
  def change
    create_table :mysciences do |t|
      t.string :title

      t.timestamps
    end
  end
end
