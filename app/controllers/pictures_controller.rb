class PicturesController < ApplicationController
  before_action :login_required
  before_action :set_current_user_pictures, only: [:show, :edit, :destroy]

  
  def index
    @pictures = current_user.pictures.order(:id)
  end
  
  def show
    redirect_to "edit"
  end

  def new
    @picture = current_user.pictures.build
  end

  def edit
    
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to :pictures, notice: "画僧を投稿しました。"
    else
      render "new"
    end
  end

  def update
    @picture.assign_attributes(picture_params)
    if @picture.save
      redirect_to :user_pictures, notice: "画像を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @picture.destroy
    redirect_to :user_pictures, notice: "画像を削除しました。"
  end

  private def picture_params
    params.require(:picture).permit(
      :image,
      :description,
      :user_id,
    )
  end

  def set_current_user_pictures
    @picture = current_user.pictures.find(params[:id])
  end
end
