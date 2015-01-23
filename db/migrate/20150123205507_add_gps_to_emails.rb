class AddGpsToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :lat, :float
    add_column :emails, :lng, :float
  end
end
