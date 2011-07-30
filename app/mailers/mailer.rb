class Mailer < ActionMailer::Base
  default :from => "abang@matchaa.com"

  def token(user)
    @user = user
    mail(:to => user.email,
         :subject => "Login to matchaa.com")
  end

  def invite(match, user, token)
    @match = match
    @user = user
    @token = token
    mail(:to => user.email,
         :subject => "Be a man. Do the right thing")
  end
end
