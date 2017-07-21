class UserMailer < ApplicationMailer

  def send_email
    mail(to: 'kraghunathan@groupon.com', subject: 'Welcome to My Awesome Site')
  end

end
