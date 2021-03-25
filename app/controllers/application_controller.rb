class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user, :is_admin?, :all_reports, :did_user_voted_this_comment

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

  def did_user_voted_this_comment(comment)
    current_user.votes.each do |vote| 
      if (vote.comment == comment)
        return vote
      end
    end
    return false
  end
end
