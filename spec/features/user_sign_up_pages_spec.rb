require 'rails_helper'


feature "Sessions" do

  scenario "displays the user's email after successful login" do
    visit root_path
    click_on "Sign up"
    user = FactoryGirl.build(:user)
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
    expect(page).to have_content("Welcome! You have signed up successfully")
  end

  scenario "user navigates to sign up page" do
    visit root_path
    click_link "Sign up"
    expect(page).to have_content("Sign up")
    expect(page).to have_content("(6 characters minimum)")
  end

  scenario "displays an error if the email is already been taken" do
  user = create(:user)
  visit new_user_registration_path
  fill_in 'user_email', with: user.email
  fill_in 'user_password', with: user.password
  fill_in 'user_password_confirmation', with: user.password
  click_button 'Sign up'
  expect(page).to have_content("Email has already been taken")
  end

end
