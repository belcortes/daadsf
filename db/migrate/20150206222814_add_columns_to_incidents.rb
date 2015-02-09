class AddColumnsToIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :categories, :string
    add_column :incidents, :tags, :string
    add_column :incidents, :display, :boolean
  end
end
