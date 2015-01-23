class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  skip_before_filter :authenticate
  

  def create
    puts "Entering the controller! Controlling the e-mail!"
    Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]
    Rails.logger.info params[:attachments]['0'].original_filename  
    Rails.logger.info params[:attachments]['0'].content_type
    Rails.logger.info params[:attachments]['0'].tempfile
    Rails.logger.info params[:attachments]['0'].tempfile.path
    p EXIFR::JPEG.new(params[:attachments]['0'].tempfile.path).date_time

    # if photo_metadata.gps
    #   latitude = photo_metadata.gps.latitude
    #   longitude = photo_metadata.gps.longitude
    #   save_to_fusion_table(latitude, longitude, params[:resource_info])
    #   @message = "File Upload Successful."
    # else
    #   @message = "This photo has no GPS Data."
    # end
    p 'exif tentatives vv'
    p params[:attachments]['0'].path
    p Tempfile.new(params[:attachments]['0'].original_filename, "#{Rails.root.to_s}/tmp/")

    @email = Email.new(text: params[:plain], html: params[:html], from: params[:envelope][:from], subject: params[:headers][:Subject], :item => params[:attachments]['0'])

    if @email.save
      render :text => 'Success', :status => 200
    else
      render :text => 'Internal failure', :status => 501
    end
  end

  # private 
  def extract_geolocation
    exif =EXIFR::JPEG.new(item.queued_for_write[:original].path) 
    self.date = exif.date_time.to_date
    self.lat = exif.gps_lat
    p self.lat
    p exif
  end 
  # def load_exif
    
  #   return if exif.nil? or not exif.exif?
  #   self.exposure = exif.exposure_time.to_s
  #   self.f_stop = exif.f_number.to_f.to_s
  #   self.focal_length = exif.focal_length.to_f.round.to_s
  #   self.iso = exif.iso_speed_ratings
  #   self.date = exif.date_time.to_date
  #   rescue
  #     false
  # end



  # skip_before_filter :verify_authenticity_token

  # def create
  #   # @params = params
  #   puts "Entering the controller! Controlling the e-mail!"
  #   p params[:text]
  #   p params[:from]
  #   p params[:subject]
  #   p params[:attachments]
  #   p params[:attachment1]
  #   # p params[:attachment-info]
  #   @inbound_email = Email.create(:text => params[:text],
  #                       :html => params[:html],
  #                       :from => params[:from],
  #                       :subject => params[:subject],
  #                       :attachments => params[:attachment1]
  #                       )

  #   if @inbound_email.save
  #     render :text => 'Success', :status => 200
  #   else
  #     render :text => 'Internal failure', :status => 501
  #   end

  #   # respond_to do |f|
  #   #   if @inbound_email.save && request.post?
  #   #     @inbound_email.process_incoming_email
  #   #     flash[:notice] = 'Item was successfully created'
  #   #     format.xml {render :xml => @inbound_email, :status => :created}
  #   #   else
  #   #     flash[:notice] = 'oops wasnt created'
  #   #     format.xml {render :xml => @inbound_email.errors, :status => :unprocessable_entity}
  #   #   end
  #   # end
  # end
  
  # def clean_field(input_string)
  #   input_string.gsub(/\n/, '') if input_string
  # end
end