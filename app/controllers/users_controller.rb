class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome!"
      redirect_to "/"
    else
      flash[:alert] = "Error"
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :admin)
  end

end
