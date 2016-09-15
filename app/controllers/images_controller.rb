class ImagesController < ApplicationController
  before_filter :is_image_owner, only:[:edit, :destroy]
  def show
    @image = Image.find(params[:id])
    @comment = Comment.new
  end

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.new(image_params)
    if @image.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @image = Image.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def update
    @image = current_user.images.find(params[:id])
    if @image.update(image_params)
      redirect_to user_image_path(current_user, @image)
    else
      render :edit
    end
  end

  def destroy
    @image = current_user.images.find(params[:id])
    @image.destroy
    redirect_to root_path
  end

private
  def image_params
    params.require(:image).permit(:image, :title)
  end
end
