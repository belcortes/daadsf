class Email < ActiveRecord::Base
  has_attached_file :item, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :item, :content_type => /\Aimage\/.*\Z/
end
