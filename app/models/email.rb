class Email < ActiveRecord::Base
  has_many :items
  has_attached_file :item, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension", 
  # :url  => "/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_content_type :item, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :item

  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  # auto-fetch address
  # after_validation :fetch_address
end
