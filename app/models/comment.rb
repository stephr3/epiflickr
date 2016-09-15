class Comment < ActiveRecord::Base
  belongs_to :image


  def find_author
    author = User.find(self.author_id)
    return author.username
  end

end
