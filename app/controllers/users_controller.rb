class UsersController < ApplicationController

  def index
    @users = User.search(params[:search][:q])
  end

  def new
    @user = User.new
    render "top/login", layout: "login"
  end


  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :root, notice: "登録しました。"
    else
      render "new"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :root, notice: "登録を削除しました。"
  end

  private def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
