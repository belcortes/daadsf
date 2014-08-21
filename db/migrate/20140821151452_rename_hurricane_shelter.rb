class RenameHurricaneShelter < ActiveRecord::Migration
  def change
    rename_column :users, :hurricane_shelter, :overnight_shelter
    rename_column :users, :bomb_shelter, :underground_shelter
  end
end
