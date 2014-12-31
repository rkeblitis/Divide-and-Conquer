class UsersController < ApplicationController

  def index

  end

  def new
    User.new
  end

  def create
    if @user = User.create(params.require(:user).permit(:username, :email, :password, :password_confirmation))
      session[:user_id] = @user.id
      current_user
    redirect_to root_path, notice: "Welcome #{@current_user.username}"
    raise

    end
  end

end
