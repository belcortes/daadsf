class EmailMailer < ActionMailer::Base
  class AttachmentFile < Tempfile
    attr_accessor :original_filename, :content_type
  end
  
  def receive(message)
    # For now just take the first attachment and assume there is only one
    attachment = message.attachments.first

 
    # Create the movie itself
    Email.create do
      # movie.title = message.subject
 
      # Create an AttachmentFile subclass of a tempfile with paperclip aware features and add it
      item_file = AttachmentFile.new('test.jpg')
      item_file.write attachment.decoded
      item_file.flush
      item_file.original_filename = attachment.filename
      item_file.content_type = attachment.mime_type
      # movie.poster = poster_file
    end
  end

  # def receive(message)
  #   # page = Email.find_by(address: message.to.first)
  #   Email.create(

  #   )
  #   page.messages.create(
  #     subject: message.subject,
  #     body: message.body
  #   )
 
  #   if message.has_attachments?
  #     message.attachments.each do |attachment|
  #       page.attachments.create({
  #         file: attachment,
  #         description: message.subject
  #       })
  #     end
  #   end
  # end
end