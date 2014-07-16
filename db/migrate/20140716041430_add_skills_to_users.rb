class AddSkillsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :engineer, :boolean
    add_column :users, :contractor, :boolean
    add_column :users, :healthcare, :boolean
    add_column :users, :mechanic, :boolean
  end
end
