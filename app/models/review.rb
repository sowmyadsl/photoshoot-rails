class Review < ApplicationRecord
  validates :body, :author, :presence => true

  belongs_to :service
end
