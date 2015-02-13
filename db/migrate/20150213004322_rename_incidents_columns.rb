class RenameIncidentsColumns < ActiveRecord::Migration
  def change
    rename_column :incidents, :lat, :latitude
    rename_column :incidents, :lng, :longitude
  end
end
