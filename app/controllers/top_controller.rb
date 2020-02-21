class TopController < ApplicationController
  def home
    if current_user
      render "users/index"
    else
      redirect_to :new_user
    end
  end
end
