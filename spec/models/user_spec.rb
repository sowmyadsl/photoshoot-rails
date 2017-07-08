require 'rails_helper'

describe User do
  it { should validate_presence_of :email}
  it { should validate_presence_of :password }

  it 'creates an admin account' do
	    user = FactoryGirl.create(:admin)
	    user.admin.should eq true
	  end

	  it 'creates a user account' do
	    user = FactoryGirl.create(:user)
	    user.admin.should eq false
	  end
end
