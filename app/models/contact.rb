class Contact < ApplicationRecord
  validates :name, :description, :email_address, :presence => true

end
