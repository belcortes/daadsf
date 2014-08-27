class RemoveResourcesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :bus, :boolean
    remove_column :users, :plow, :boolean
    remove_column :users, :lathe, :boolean
    remove_column :users, :crane, :boolean
    remove_column :users, :truck, :boolean
    remove_column :users, :air_compressor, :boolean
  end
end
