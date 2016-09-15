class TagsController < ApplicationController
  def new
    @image = Image.find(params[:id])
    @tag = Tag.new
  end

  def create
    @image = Image.find(params[:image_id])
    name_array = params[:tags].split
    name_array.each do |name|
      if !(Tag.all.detect{|tag| tag.name == name})
        new_tag = Tag.create(name: name)
        @image.tags.push(new_tag)
      end
    end
    redirect_to user_image_path(@image.user, @image)
  end
private
  def tag_params
    params.require(:tag).permit(:name)
  end
end
