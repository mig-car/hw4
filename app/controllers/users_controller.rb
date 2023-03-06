class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new

    # Removing first_name and last_name as it's not required and not part of schema.
    # @user["first_name"] = params["user"]["first_name"]
    # @user["last_name"] = params["user"]["last_name"]
    
    @user["username"] = params["user"]["username"]
    @user["email"] = params["user"]["email"]
    @user["password"] = params["user"]["password"]
    @user.save
    redirect_to "/"
  end
end
