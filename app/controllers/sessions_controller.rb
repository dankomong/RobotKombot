class SessionsController < ApplicationController
  before_action :authorized?, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to jobs_path
    # else
    #   flash["errors"] = ["Your username or password was incorrect"]
    #   redirect_to new_login_path
    end
  end

  def destroy
    log_out
    redirect_to new_session_path
  end

end
