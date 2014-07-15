class AddCertificationsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cpr, :boolean
    add_column :users, :safe, :boolean
    add_column :users, :first_aid, :boolean
  end
end
