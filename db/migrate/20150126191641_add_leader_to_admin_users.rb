class AddLeaderToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :leader, :boolean
  end
end
