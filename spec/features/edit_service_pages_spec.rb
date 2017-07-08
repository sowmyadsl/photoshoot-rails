require 'rails_helper'

feature "Sessions" do
  scenario "admin edits a service" do
    admin = create(:admin)
    sign_in admin
    service = create(:service)
    visit edit_service_path(service)
    fill_in 'Name', with: "Edited Name"
    click_button 'Update Service'
    expect(page).to have_content("Edited Name")
  end

  scenario "renders edit page if there is an error" do
    admin = create(:admin)
    sign_in admin
    service = create(:service)
    visit edit_service_path(service)
    fill_in 'Name', with: ""
    click_button 'Update Service'
    expect(page).to have_content("error")
  end
end
