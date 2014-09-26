class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def after_sign_in_path_for(omniauth)
    request.env['omniauth.origin'] || stored_location_for(omniauth) || 'site#faq'
  end

  helper_method :current_user
end