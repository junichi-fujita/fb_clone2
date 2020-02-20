class TopController < ApplicationController
  def home
    if current_user
      render "users/index"
    else
      render :login, layout: "login"
    end
  end
end
