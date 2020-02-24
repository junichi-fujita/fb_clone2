class PicturesController < ApplicationController
  before_action :login_required
  before_action :set_current_user_pictures, only: [:show, :edit, :update, :destroy]

  def all_picture
    redirect_to :new_picture
  end

  def index
    @pictures = current_user.pictures.order(:id)
  end
  
  def show
    
  end

  def new
    if params[:back]
      @pictures = Picture.order(updated_at: :desc)
      @picture = current_user.pictures.build(picture_params)
      render "top/home"
    else
      @pictures = Picture.order(updated_at: :desc)
      @picture = current_user.pictures.build
      render "top/home"
    end
  end

  def edit
    
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render "top/home"
    else
      if @picture.save
        redirect_to :all_picture_pictures, notice: "画僧を投稿しました。"
      else
        render "new"
      end
    end
  end

  def update
    @picture.assign_attributes(picture_params)
    if @picture.save
      redirect_to :pictures, notice: "画像を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @picture.destroy
    redirect_to :all_picture_pictures, notice: "画像を削除しました。"
  end

  def confirm
    @pictures = Picture.order(updated_at: :desc)
    @picture = current_user.pictures.build(picture_params)
    render "top/home" if @picture.invalid?
  end

  private def picture_params
    params.require(:picture).permit(
      :image,
      :image_cache,
      :description,
      :user_id,
    )
  end

  private def set_current_user_pictures
    @picture = current_user.pictures.find(params[:id])
  end
end
