class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :organizations, :string
    remove_column :users, :user_type, :string
    remove_column :users, :provider, :string
    remove_column :users, :healthcare, :boolean
    remove_column :users, :mechanic, :boolean
  end
end
