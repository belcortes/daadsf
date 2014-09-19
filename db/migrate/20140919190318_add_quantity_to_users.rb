class AddQuantityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :backhoe_q, :integer
    add_column :users, :bulldozer_q, :integer
    add_column :users, :dumptruck_q, :integer
    add_column :users, :excavator_q, :integer
    add_column :users, :forklift_q, :integer
    add_column :users, :frontloader_q, :integer
    add_column :users, :jackhammer_q, :integer
    add_column :users, :reclaimer_q, :integer
    add_column :users, :tractor_q, :integer
    add_column :users, :trencher_q, :integer
    add_column :users, :axe_q, :integer
    add_column :users, :drill_q, :integer
    add_column :users, :fuel_q, :integer
    add_column :users, :goggles_q, :integer
    add_column :users, :hammer_q, :integer
    add_column :users, :shovel_q, :integer
    add_column :users, :defibrillation_q, :integer
    add_column :users, :emergency_q, :integer
    add_column :users, :oxygen_q, :integer
    add_column :users, :wheelchair_q, :integer
  end
end
