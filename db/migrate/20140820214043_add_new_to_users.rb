class AddNewToUsers < ActiveRecord::Migration
  def change
    add_column :users, :carpenter, :boolean
    add_column :users, :operator, :boolean
    add_column :users, :plumber, :boolean
    add_column :users, :kitchen, :boolean
  end
end
