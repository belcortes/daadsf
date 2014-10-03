class AddTypesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :business, :boolean
    add_column :users, :ngo, :boolean
    add_column :users, :gov, :boolean
    add_column :users, :faith, :boolean
    add_column :users, :closed, :boolean
    add_column :users, :open, :boolean
  end
end
