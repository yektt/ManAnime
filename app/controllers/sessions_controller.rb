class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if(user.present? && user.authenticate(params[:password]) && user.is_blocked != true)
      session[:user_id] = user.id
      redirect_to root_path
    else
      if(user.is_blocked == true)
        alert1 = ['You have been banned from the application!', '<br/>', 
                  'Please check our rules from', "<a href=\"/help_and_rules\">Help & Rules Page.</a>", '<br/>',
                  'If you think there is a problem, please contact with us via', "<a href=\"/contact\">Contact Page!</a>"]
        flash[:alert] = alert1.join.html_safe
      else
        flash[:alert] = "Email or password is invalid.  Please try again"
      end
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id) 
    redirect_to root_path
  end
end
