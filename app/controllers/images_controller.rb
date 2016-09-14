class ImagesController < ApplicationController
  def new
    @image = current_user.images.new
  end

  def create
    @image = current_user.images.new(image_params)
    if @image.save
      redirect_to root_path
    else
      render :new
    end

  end

private
  def image_params
    params.require(:image).permit(:image, :title)
  end
end
