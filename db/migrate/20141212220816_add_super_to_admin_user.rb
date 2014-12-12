class AddSuperToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :super, :boolean
  end
end
