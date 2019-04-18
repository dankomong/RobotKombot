class UsersController < ApplicationController

before_action :authorized?, except: [:new, :create]


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end

  def create
    @user  = User.create!(user_params)
    if @user.valid?
      redirect_to jobs_path
    else
      render :new
    end
  end






  private


  def user_params
    params.require(:user).permit(:username, :password)
  end














end
