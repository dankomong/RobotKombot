class LoginController < ApplicationController

  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      redirect_to jobs_path
    else
      flash["errors"] = ["Your username or password was incorrect"]
      redirect_to new_login_path
    end
  end

  def destroy
    log_out
    redirect_to characters_path
  end

end
