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

    # :attach => params[:attachments]['0']
    # Rails.logger.log params[:attachments][0] if params[:attachments] # A tempfile attachment if attachments is populated

    # @attachment = Item.create(:attachment => params[:attachments][0])



    @email = Email.new(text: params[:plain], html: params[:html], from: params[:envelope][:from], subject: params[:headers][:Subject])
    p 'exif? vvvvvvv'
    p params[:attachments][0][:filename]
    # p @attachment
    # EXIFR::JPEG.new(params[:attachments][:filename]).exif?
    p 'params up hurrrr ^^^^^^^^^^^^^^^'

    if @email.save
      render :text => 'Success', :status => 200
    else
      render :text => 'Internal failure', :status => 501
    end
  end



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

  # private
  # def clean_field(input_string)
  #   input_string.gsub(/\n/, '') if input_string
  # end
end