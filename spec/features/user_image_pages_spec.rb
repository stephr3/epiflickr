require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe 'editing an image' do
  it 'allows a user to edit an image' do
    image = FactoryGirl.create(:image)
    user = User.find(image.user_id)
    # user.id = user.images.i
    login_as(user, :scope => :user)
    visit root_path
    click_link 'puppy'
    click_link 'Edit Image'
    fill_in 'Title', :with => 'Dog'
    click_button 'Upload'
    save_and_open_page
    expect(page).to have_content('Dog')
  end
end
