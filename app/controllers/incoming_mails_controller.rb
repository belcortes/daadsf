class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  skip_before_filter :authenticate

  def create
    puts "Entering the controller! Controlling the e-mail!"
    Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]
    Rails.logger.log params[:attachments][0] if params[:attachments] # A tempfile attachment if attachments is populated

    @email = Email.new(text: params[:plain], subject: params[:headers][:subject])

    if @email.save
      render :text => 'Success', :status => 200
    else
      render :text => 'Internal failure', :status => 501
    end
  end

  # skip_before_filter :verify_authenticity_token

  # def receive_email
  #   @params = params
  #   @inbound_email = Email.new(:text => params['text'],
  #                       :html => params['html'],
  #                       :to => clean_field(params['to']),
  #                       :from => clean_field(params['from']),
  #                       :subject => clean_field(params['subject']),
  #                       :attachment => params["attachment"]
  #                       )

  #   respond_to do |f|
  #     if @inbound_email.save && request.post?
  #       @inbound_email.process_incoming_email
  #       flash[:notice] = 'Item was successfully created'
  #       format.xml {render :xml => @inbound_email, :status => :created}
  #     else
  #       flash[:notice] = 'oops wasnt created'
  #       format.xml {render :xml => @inbound_email.errors, :status => :unprocessable_entity}
  #     end
  #   end
  # end

  # private
  # def clean_field(input_string)
  #   input_string.gsub(/\n/, '') if input_string
  # end
end