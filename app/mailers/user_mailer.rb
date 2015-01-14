class UserMailer < ActionMailer::Base
  default from: "belcortes@gmail.com"

  def email_blast(user)
    @user = user
    mail(to: @user.email, subject: 'DAAD Email Blast')
  end
end
