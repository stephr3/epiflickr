FactoryGirl.define do
  factory :user do
    email('me@me.com')
    password('123456')
    avatar { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }

    # factory :user_with_images do
    #   transient do
    #     images_count 5
    #   end
    #   after(:create) do |user, evaluator|
    #     create(:image, evaluator.images_count, user: user)
    #   end
    # end
  end

  factory :image do
    title("puppy")
    image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
    user
  end
end
