class UserMailer < ApplicationMailer
  default from: 'mananimeteam@gmail.com'

  def welcoming
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome')
  end
end
