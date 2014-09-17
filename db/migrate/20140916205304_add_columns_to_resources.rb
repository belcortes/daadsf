class AddColumnsToResources < ActiveRecord::Migration
  def change
    add_column :resources, :address, :string
    add_column :resources, :phone_number, :string
    add_column :resources, :website, :string
    add_column :resources, :resource_type, :string
    add_column :resources, :facility_type, :string
    add_column :resources, :services, :string
  end
end
