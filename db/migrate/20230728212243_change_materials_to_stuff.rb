class ChangeMaterialsToStuff < ActiveRecord::Migration[7.0]
  def change
      rename_table :materials, :stuffs
      #rename_table :stuff, :stuffs
  end
end
