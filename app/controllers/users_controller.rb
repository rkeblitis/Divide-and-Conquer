class UsersController < ApplicationController

  def index

  end

  def new
    User.new
  end

  def create
    user = User.create(params.require(:user).permit(:username, :email, :password, :password_confirmation))
    current_user(user.id)
    redirect_to root_path, notice: "Welcome #{user.username}"
  end

end
