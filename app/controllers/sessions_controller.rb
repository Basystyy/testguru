class SessionsController < AuthenticatedController

  skip_before_action :authenticate_user!, only: %i[new create]
  
  def new

  end

  def destroy
    reset_session
    redirect_to login_path, notice: 'You have been logged out.'
  end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      last_action = cookies[:last_action]
      cookies.delete(:last_action)
      redirect_to last_action || tests_path
    else
      flash.now[:alert] = 'Are you a Guru? Verify your Email and Password please'
      render :new
    end
  end

end
