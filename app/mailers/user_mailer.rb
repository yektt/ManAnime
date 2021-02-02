class UserMailer < ApplicationMailer
  default from: 'mananimeteam@gmail.com'

  def welcoming
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome')
  end

  def receive_contact
    @contact = params[:contact]
    mail(to: @contact.email, subject: 'Contact Form')
  end
end