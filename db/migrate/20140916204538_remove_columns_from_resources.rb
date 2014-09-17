class RemoveColumnsFromResources < ActiveRecord::Migration
  def change
    remove_column :resources, :street_number, :integer
    remove_column :resources, :street_name, :string
    remove_column :resources, :street_type, :string
    remove_column :resources, :location, :string
    remove_column :resources, :station_type, :string
  end
end