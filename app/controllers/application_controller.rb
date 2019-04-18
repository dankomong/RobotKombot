class ApplicationController < ActionController::Base
  # before_action :setup_voting_stuff

  def setup_voting_stuff
    @notification = flash["notification"]
    @errors = flash["errors"]

    @user_id = session[:user_id]
    @logged_in = !!@user_id
    if @logged_in
      @logged_in_user = User.find(@user_id)
    end
  end

  def log_out
    session[:user_id] = nil
  end

end
