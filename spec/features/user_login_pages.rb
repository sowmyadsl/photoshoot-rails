require 'rails_helper'
require 'pry'

feature "Sessions" do

  scenario "User logs in" do
    visit root_path
    click_link "Login"
    expect(page).to have_content("Log in")
    click_button "Log in"
    expect(page).to have_content("Invalid Email or password")
  end
end
