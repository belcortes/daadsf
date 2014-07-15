class AddResourcesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dump_truck, :boolean
    add_column :users, :back_hoe, :boolean
    add_column :users, :crane, :boolean
    add_column :users, :fork_lift, :boolean
    add_column :users, :truck, :boolean
    add_column :users, :fuel, :boolean
    add_column :users, :air_compressor, :boolean
    add_column :users, :power_generator, :boolean
    add_column :users, :bus, :boolean
    add_column :users, :saw, :boolean
    add_column :users, :lathe, :boolean
    add_column :users, :plow, :boolean
    add_column :users, :jack_hammer, :boolean
    add_column :users, :emergency_kit, :boolean
    add_column :users, :drill, :boolean
    add_column :users, :hammer, :boolean
    add_column :users, :survival_kit, :boolean
    add_column :users, :shovel, :boolean
  end
end
