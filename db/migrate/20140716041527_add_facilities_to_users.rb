class AddFacilitiesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :church, :boolean
    add_column :users, :school, :boolean
    add_column :users, :bomb_shelter, :boolean
    add_column :users, :hurricane_shelter, :boolean
  end
end
