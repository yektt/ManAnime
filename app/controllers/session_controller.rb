class SessionController < ApplicationController
  def new
  end

  def create
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
