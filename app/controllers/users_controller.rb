class UsersController < ApplicationController

  def index
    @users = User.search(params[:search][:q])
  end

  def new

  end


  def create

  end

  def destroy
    
  end
end
