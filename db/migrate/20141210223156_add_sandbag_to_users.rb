class AddSandbagToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sandbag, :boolean
    add_column :users, :sandbag_q, :integer
  end
end
