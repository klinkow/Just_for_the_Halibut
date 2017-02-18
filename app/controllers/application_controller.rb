class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user = User.find(session[:user_id]) rescue nil
  end
  helper_method :current_user

  def admin
    @current_user = User.find(session[:user_id]) rescue nil
    @admin = @current_user.admin rescue nil
  end
  helper_method :admin

end
