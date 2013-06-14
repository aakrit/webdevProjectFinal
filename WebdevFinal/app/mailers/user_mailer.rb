class UserMailer < ActionMailer::Base
  default :from => "web@nopwnintended.net"

  def welcome_email(user)
    @user = user
    mail(:to => "#{user.username} <#{user.email}>", :subject => "Registered")
  end
end
