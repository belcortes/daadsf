class AddHeavyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :bulldozer, :boolean
    add_column :users, :excavator, :boolean
    add_column :users, :front_loader, :boolean
    add_column :users, :reclaimer, :boolean
    add_column :users, :trencher, :boolean
    add_column :users, :tractor, :boolean
    add_column :users, :goggles, :boolean
    add_column :users, :axe, :boolean
  end
end
