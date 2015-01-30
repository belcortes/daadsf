class AddPublishedToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :published, :boolean
  end
end
