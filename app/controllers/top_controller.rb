class TopController < ApplicationController
  def home
    if current_user
      redirect_to :all_picture_pictures
    else
      redirect_to :new_user
    end
  end
end
