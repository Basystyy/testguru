class ApplicationController < ActionController::Base

  # protect_from_forgery with: :exeption

  def after_sign_in_path_for(current_user)
    if current_user.is_a?(Admin)
      admin_tests_path
    else
      root_path
    end
  end

end
