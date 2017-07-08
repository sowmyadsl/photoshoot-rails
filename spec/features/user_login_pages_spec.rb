require 'rails_helper'


feature "Sessions" do

  scenario "User logs in" do
    visit root_path
    click_link "Login"
    expect(page).to have_content("Log in")
    click_button "Log in"
    expect(page).to have_content("Invalid Email or password")
  end

  scenario "displays the user's email after successful login" do
   user = create(:user)
   visit new_user_session_path
   fill_in 'user_email', with: user.email
   fill_in 'user_password', with: user.password
   click_button 'Log in'
   expect(page).to have_content("Signed in successfully")
 end

  scenario "displays error if the password is not entered" do
   user = create(:user)
   visit new_user_session_path
   fill_in 'user_email', with: user.email
   click_button 'Log in'
   expect(page).to have_content("Invalid Email or password.")
 end

end
