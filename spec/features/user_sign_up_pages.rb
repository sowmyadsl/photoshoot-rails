require 'rails_helper'


feature "Sessions" do

 "User logs in" do
    visit root_path
    click_link "sigin"
    expect(page).to have_content("Log in")
    click_button "Log in"
    expect(page).to have_content("Invalid Email or password")
  end
