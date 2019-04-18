class ApplicationController < ActionController::Base


  def authorized?
    redirect_to new_session_path unless logged_in
  end

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def logged_in
    !!current_user
  end





  def log_out
    session[:user_id] = nil
  end

end
