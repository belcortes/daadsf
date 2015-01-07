class AddDisplay2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :display2, :boolean, :default => false
    add_column :users, :display3, :boolean, :default => false
  end
end
