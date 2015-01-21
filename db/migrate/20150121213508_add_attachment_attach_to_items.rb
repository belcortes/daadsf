class AddAttachmentAttachToItems < ActiveRecord::Migration
  def self.up
    add_attachment :items, :attach
  end

  def self.down
    remove_attachment :items, :attach
  end
end
