class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user, :is_admin?, :all_reports, :ensure_owner, :ensure_authenticated, :ensure_admin, :ensure_pageowner

  before_action :set_locale

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

  def ensure_admin
    redirect_to contact_path unless (is_admin?)
  end

  def ensure_authenticated
    redirect_to login_path unless (logged_in?)
  end

  def ensure_owner 
    comment = Comment.find(params[:comment_id])  
    return true if (current_user == comment.user)
  end

  def ensure_pageowner
    redirect_to login_path unless (logged_in?)
    unless (current_user === User.find(params[:id]))
      session.delete(:user_id) 
      redirect_to login_path
    end
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def all_reports
    @reports = []

    User.all.each do |user|
      user.reports.select { |report| ( @reports << report) }
    end

    return @reports
  end

end
