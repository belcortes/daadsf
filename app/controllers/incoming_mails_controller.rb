class IncomingMailsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    puts "Entering the controller! Controlling the e-mail!"
    Rails.logger.info params[:subject]
    Rails.logger.info params[:from]
    Rails.logger.info params[:to]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]
    Rails.logger.info params[:attachment]

    # if User.all.map(&:email).include? params[:envelope][:from] # check if user is registered
    #   @thought = Thought.new
    #   @thought.body = params[:plain].split("\n").first
    #   @thought.user = User.where(:email => params[:from])
    #   @thought.date = DateTime.now

    #   if @thought.save
    #     render :text => 'Success', :status => 200
    #   else
    #     render :text => 'Internal failure', :status => 501
    #   end
    # else
    #   render :text => 'Unknown user', :status => 404 # 404 would reject the mail
    # end
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