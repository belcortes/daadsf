class AddPersonalToUsers < ActiveRecord::Migration
  def change
    add_column :users, :emergency_contact, :string
  end
end
