class UsersController < ApplicationController

  def new
    User.new
  end

  def create
    # User.create
    redirect_to root_path
  end

end
