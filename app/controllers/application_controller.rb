class ApplicationController < ActionController::Base
  before_action :current_user

  def current_user
    # find current user from user_id of initialized session
    @current_user = User.find_by({ "id" => session["user_id"] })
 end
end
