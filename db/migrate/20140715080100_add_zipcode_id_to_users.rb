class AddZipcodeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zipcode_id, :integer
  end
end
