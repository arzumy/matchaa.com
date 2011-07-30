class Mailer < ActionMailer::Base
  default :from => "abang@matchaa.com"

  def token(user)
    @user = user
    mail(:to => user.email,
         :subject => "Login to matchaa.com")
  end
end
