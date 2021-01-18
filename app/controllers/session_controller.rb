class SessionController < ApplicationController
  def new
  end

  def create
    if (params[:email].blank? || params[:password].blank?)
      flash[:alert] = "Both areas should be filled!"
      render 'new'
    else
      user = User.find_by(email: params[:email].downcase)

      if(user.present? && user.authenticate(params[:password]))
        session[:user_id] = user.id
        redirect_to root_path
      else
        flash[:alert] = "Email or password is invalid.  Please try again"
        render 'new'
      end
    end
  end

  def destroy
    session.delete(:user_id) 
    redirect_to root_path
  end
end
