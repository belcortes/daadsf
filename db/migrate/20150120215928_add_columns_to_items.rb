class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :file_name, :string
    add_column :items, :content_type, :string
    add_column :items, :file_size, :integer
  end
end
