class LeadersUsers < ActiveRecord::Migration
  def change
    create_table :leaders_users do |t|
      t.integer :user_id
      t.integer :leader_id
    end
  end
end
