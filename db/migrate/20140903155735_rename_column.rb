class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :back_hoe, :backhoe
    rename_column :users, :dump_truck, :dumptruck
    rename_column :users, :fork_lift, :forklift
    rename_column :users, :front_loader, :frontloader
    rename_column :users, :first_aid, :firstaid
    rename_column :users, :first_reponder, :firstresponder
    rename_column :users, :power_generator, :generator
    rename_column :users, :overnight_shelter, :overnight
    rename_column :users, :underground_shelter, :underground
    rename_column :users, :emergency_kit, :emergency
    rename_column :users, :wheel_chair, :wheelchair
    rename_column :users, :jack_hammer, :jackhammer
  end
end
