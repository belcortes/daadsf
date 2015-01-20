class UserMailer < ActionMailer::Base
  default from: "belcortes@gmail.com"

  def email_blast(user)
    @user = user
    mail(to: @user.email, subject: 'DAAD Email Blast')
  end

  def receive(message)
    for recipient in message.to
      User.find_by_email(recipient).update_attribute(:bio, message.body)
    end
  end
end
