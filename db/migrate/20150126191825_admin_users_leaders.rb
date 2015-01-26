class AdminUsersLeaders < ActiveRecord::Migration
  def change
    create_table :admin_users_leaders do |t|
      t.integer :admin_user_id
      t.integer :leader_id
    end
  end
end
