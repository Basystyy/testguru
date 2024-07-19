class Admin::BaseController < AuthenticatedController

  before_action :admin_required!

  protected

  def admin_required!
    redirect_to root_path, alert: 'You are not authorized to view this page.' unless current_user.is_a?(Admin)
  end

end