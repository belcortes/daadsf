class AddAttachmentImageToIncidents < ActiveRecord::Migration
  def self.up
    add_attachment :incidents, :image
  end

  def self.down
    remove_attachment :incidents, :image
  end
end
