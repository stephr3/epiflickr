class FavoritesController<ApplicationController
  def index
    @favorites = current_user.favorited_images
  end

  def create
    @user = User.find(params[:user_id])
    @image = Image.find(params[:image_id])
    if @user.favorited_images.exclude?(@image)
      @user.favorited_images.push(@image)
    end
  end
end
