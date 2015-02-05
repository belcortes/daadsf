class Incident < ActiveRecord::Base

  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  # auto-fetch address

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension", 
  # :url  => "/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # validates_attachment_presence :image

  # geocoded_by :full_street_address
  # after_validation :geocode, :if => :address_changed?
end
