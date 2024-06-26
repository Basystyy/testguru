class SessionsController < ApplicationController
  
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
      redirect_to tests_path
    else
      flash.now[:alert_message]
      render :new
    end
  end

end
