class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  # protect_from_forgery with: :exeption

  def after_sign_in_path_for(current_user)
    if current_user.is_a?(Admin)
      admin_tests_path
    else
      root_path
    end
    flash[:notice] = "Welcome, #{current_user.first_name} #{current_user.last_name}"
    super(current_user)
  end

  def after_sign_up_path_for(current_user)
    flash[:notice] = "Welcome, #{current_user.first_name} #{current_user.last_name}"
    super(current_user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

end
