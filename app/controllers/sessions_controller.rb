class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    if @user == nil
      redirect_to root_path, notice: "Username not found please try again, or sign up for an account"
    elsif
      @user.authenticate(params[:password])
      current_user(@user.id)
      redirect_to root_path, notice: "Hi #{@current_user.username}"

    else
      redirect_to root_path, notice: "Incorrect Password"
    end
  end

  def destroy
    current_user(nil)
    redirect_to root_path, notice: "Signed Out."
  end

end
