require 'rails_helper'

feature "Sessions" do

  scenario "admin can navigate to add a service" do
    admin = create(:admin)
    sign_in admin
    visit root_path(admin)
    click_on "Services"
    expect(page).to have_content("Services")
    click_button "New Service"
    expect(page).to have_content("New Service")
  end
end
