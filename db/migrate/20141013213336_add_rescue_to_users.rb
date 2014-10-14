class AddRescueToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rescue, :boolean
    add_column :users, :flashlight, :boolean
    add_column :users, :flashlight_q, :integer
  end
end
