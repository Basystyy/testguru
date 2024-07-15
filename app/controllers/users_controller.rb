class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.name = @user.email unless @user.name.present?

    if @user.save
      session[:user_id] = user.id
      redirect_to tests_path, notice: 'New User saved'
    else
      render :new, alert: 'User do not saved'
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :gender, :password, :password_confirmation)
  end

end
