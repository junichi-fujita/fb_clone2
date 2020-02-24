class ApplicationController < ActionController::Base
  helper_method :current_user

  class LoginRequired < StandardError; end
  class Forbidden < StandardError; end
  
  private 
  
  def current_user
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def login_required
    raise LoginRequired unless current_user
  end
end
