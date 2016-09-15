class Image < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :tags
  has_and_belongs_to_many :favorited_by_users, class_name:"User"

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
