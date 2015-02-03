class AddAddressToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :address, :string
  end
end
