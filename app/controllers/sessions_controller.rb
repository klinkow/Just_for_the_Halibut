class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.authenticate(params[:email], params[:password])
    if @user
      flash[:notice] = "Logged In."
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "Error"
      redirect_to log_in_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged Out."
    redirect_to "/"
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
