class AuthenticatedController < ApplicationController
  
  before_action :authenticate_user!

  protected

  
  def authenticate_user!
    unless current_user
      redirect_to new_user_session_path, alert: 'Are you a Guru? Verify your Email and Password please'
    end

    session[:id] == current_user&.id
  end
  
end