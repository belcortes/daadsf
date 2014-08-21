class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_reponder, :boolean
    add_column :users, :inspector, :boolean
    add_column :users, :commercial, :boolean
    add_column :users, :electrician, :boolean
  end
end
