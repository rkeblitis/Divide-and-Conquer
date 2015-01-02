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
      # Payment.create(user_id: "#{@user.id}")
      redirect_to root_path, notice: "Welcome #{@current_user.username}"
    else
      redirect_to root_path, notice: "Passwords did not match"
    end
  end

end
