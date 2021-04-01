class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if(user.present? && user.authenticate(params[:password]))
      if (user.is_blocked == false)
        session[:user_id] = user.id
        redirect_to root_path
        return
      elsif (user.is_blocked == true ) 
        alert1 = ['You have been banned from the application!', '<br/>', 
          'Please check our rules from', "<a href=\"/" + params[:locale] + "/help_and_rules\">Help & Rules Page.</a>", '<br/>',
          'If you think there is a problem, please contact with us via', "<a href=\"/" + params[:locale] + "/contact\">Contact Page!</a>" ]
        flash[:alert] = alert1.join.html_safe
      end
    else
      flash[:alert] = "Email or password is invalid.  Please try again"
    end
    render 'new'
  end

  def destroy
    session.delete(:user_id) 
    redirect_to root_path
  end
end
