class AddAttachmentItemToEmails < ActiveRecord::Migration
  def self.up
    add_attachment :emails, :item
  end

  def self.down
    remove_attachment :emails, :item
  end
end
