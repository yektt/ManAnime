class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user, :is_admin?

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if(@current_user.present?)
      return @current_user
    end
    @current_user = User.find(session[:user_id])
  end

  def is_admin?
    return false unless(logged_in?)
    true if(current_user.role == 'admin')
  end
end
