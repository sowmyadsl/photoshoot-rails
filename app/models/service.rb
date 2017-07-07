class Service < ApplicationRecord
has_many :reviews, dependent: :destroy

validates :name, :description, :price, :image, :presence => true

end
