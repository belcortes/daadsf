class AddMealsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :meals, :boolean
    add_column :users, :gather, :boolean
    add_column :users, :clothing, :boolean
    add_column :users, :spiritual, :boolean
    add_column :users, :meal_q, :integer
    add_column :users, :clothing_q, :integer
  end
end
