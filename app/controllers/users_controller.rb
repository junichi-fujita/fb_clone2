class UsersController < ApplicationController

  def index
    @users = User.search(params[:search][:q])
  end

  def new

  end

  def show

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy
    
  end
end
