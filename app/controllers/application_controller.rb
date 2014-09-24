class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def after_sign_in_path_for(omniauth)
    request.env['omniauth.origin'] || stored_location_for(omniauth) || 'site#faq'
  end

  helper_method :current_user
end