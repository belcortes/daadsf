class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def email_blast(user)
    @user = user
    # @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'DAAD Email Blast')
  end
end
