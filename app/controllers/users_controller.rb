class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.name = @user.email unless @user.name.present?

    if @user.save
      redirect_to tests_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :gender, :password, :password_confirmation)
  end

end
