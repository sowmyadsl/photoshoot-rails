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

  scenario "displays an error if a service name was missing" do
    admin = create(:admin)
    sign_in admin
    service = build(:service)
    visit  new_service_path(admin)
    fill_in 'Description', with: service.description
    fill_in 'Image', with: service.image
    fill_in 'Price', with: service.price
    click_button 'Create Service'
    expect(page).to have_content("Name can't be blank")
  end

end
