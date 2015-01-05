class AddDisplay2ToUsers < ActiveRecord::Migration
  def change
    add_column :users, :display2, :boolean, :default => true
    add_column :users, :display3, :boolean, :default => true
  end
end
