class AddNumbersToUsers < ActiveRecord::Migration
  def change
    add_column :users, :license_number, :integer
    add_column :users, :certification_number, :integer
    add_column :users, :duns_number, :integer
    add_column :users, :volunteer, :boolean
  end
end
