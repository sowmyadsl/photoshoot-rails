require 'rails_helper'

feature "Sessions" do

  before(:each) do
   create(:user)
   visit root_path
   click_link 'Login'
   fill_in 'Email', :with => "udai@email.com"
   fill_in 'Password', :with => "password"
   click_button 'Log in'
 end

 it "lets the user add a review" do
   service = create(:service)
   visit service_review_path(service)
   click_button "Add a review"
   fill_in 'Author', with: 'Sowmya'
   fill_in 'Body', with: 'Love her photography'
   click_button "Create Review"
   expect(page).to have_content('Review successfully added')
 end
end
