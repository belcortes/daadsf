class Item < ActiveRecord::Base
  
  belongs_to :email
  has_attached_file :attach, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :attach, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :attach
end
