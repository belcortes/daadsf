class AddResourceToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :resource, :boolean
    add_column :incidents, :asset, :boolean
  end
end
