class AddEmailIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :email_id, :integer
  end
end
