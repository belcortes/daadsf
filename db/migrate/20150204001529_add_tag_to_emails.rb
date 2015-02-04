class AddTagToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :tags, :string
  end
end
