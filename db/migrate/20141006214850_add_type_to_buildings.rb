class AddTypeToBuildings < ActiveRecord::Migration
  def change
    add_column :buildings, :b_type, :string
  end
end
