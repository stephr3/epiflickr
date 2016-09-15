class CommentsController < ApplicationController
  def new
    @image = Image.find(params[:id])
    @comment = @image.comments.new
  end

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.new(comment_params)
    if @comment.save
      @comment.author_id = current_user.id
      redirect_to user_image_path(@image.user, @image)
    else
      redirect_to user_image_path(@image.user, @image)
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content, :author_id)
  end
end
