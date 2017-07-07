class Service < ApplicationRecord
validates :name, :description, :price, :image, :presence => true

end
