require 'rails_helper'

feature "Sessions" do
  scenario "admin can delete a service" do
    admin = create(:admin)
    sign_in admin
    service = create(:service)
    visit service_path(service)
    click_link 'Delete'
    expect(page).to have_content("Service successfully removed!")
  end
end
