class RemoveColumnsFromIncidents < ActiveRecord::Migration
  def change
    remove_column :incidents, :asset, :boolean
    remove_column :incidents, :resource, :boolean
    add_column :incidents, :r_type, :string
  end
end
