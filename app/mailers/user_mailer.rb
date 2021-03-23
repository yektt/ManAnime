class UserMailer < ApplicationMailer
  default from: 'mananimeteam@gmail.com'

  def welcoming
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome')
  end

  def block_mail(user, reason)
    @reason = reason
    @user = user
    logger.info(@user.name)
    mail(to: @user.email, subject: 'You have been blocked')
  end

  def receive_contact
    @contact = params[:contact]
    mail(to: @contact.email, subject: 'Contact Form')
  end
end