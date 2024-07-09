class ApplicationController < ActionController::Base

  helper_method :current_user,
                :logged_in?
                :last_path

  protected

  def authenticate_user!
    unless current_user
      cookies[:last_action] = request.path
      redirect_to login_path, alert: 'Are you a Guru? Verify your Email and Password please'
    end

    session[:id] == current_user&.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end
end
