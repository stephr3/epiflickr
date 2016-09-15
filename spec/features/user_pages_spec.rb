require 'rails_helper'
describe "signing up a new user" do
  it "signs up a new user" do
    visit root_path
    click_link 'Sign up'
    fill_in "Email", :with => 'me@me.com'
    fill_in "Password", :with => "123456"
    fill_in "Password confirmation", :with => "123456"
    attach_file "Avatar", 'app/assets/images/hqdefault.jpg'
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
  end
end
