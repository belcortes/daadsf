class CreateAdminUsersUsersTable < ActiveRecord::Migration
  def change
    create_table :admin_users_users do |t|
      t.integer :admin_user_id
      t.integer :user_id
    end
  end
end
