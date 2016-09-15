FactoryGirl.define do
  factory :image do
    title("puppy")
    image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
    user
  end
end
FactoryGirl.define do
  factory :user do
    username('blender')
    email('you@you.com')
    password('123456')
    avatar { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
  end
end
