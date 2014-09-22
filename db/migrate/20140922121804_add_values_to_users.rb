class AddValuesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :generator_q, :integer
    add_column :users, :kitchen_q, :integer
    add_column :users, :overnight_q, :integer
    add_column :users, :underground_q, :integer
  end
end
