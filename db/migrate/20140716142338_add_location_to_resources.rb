class AddLocationToResources < ActiveRecord::Migration
  def change
    add_column :resources, :location, :string
  end
end
