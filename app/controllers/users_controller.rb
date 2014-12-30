class UsersController < ApplicationController

  def index

  end

  def new
    User.new
  end

  def create
    User.create(params.require(:user).permit(:username, :email, :password, :password_confirmation))
    redirect_to root_path
  end

end
