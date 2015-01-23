class Email < ActiveRecord::Base
  has_attached_file :item, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # :path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension", 
  # :url  => "/assets/photos/:id/:style/:basename.:extension"
  validates_attachment_content_type :item, :content_type => /\Aimage\/.*\Z/
  validates_attachment_presence :item

  # after_email_post_process :load_exif

  def load_exif
    exif = EXIFR::JPEG.new(email.queued_for_write[:original].path)
    return if exif.nil? or not exif.exif?
    self.exposure = exif.exposure_time.to_s
    self.lat = exif.gps.latitude
    self.lng = exif.gps.longitude
    p self.lat
    rescue
      false
  end

end
