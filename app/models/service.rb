class Service < ApplicationRecord
has_many :reviews, dependent: :destroy

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/missing.png"

validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

validates :name, :description, :price, :image, :presence => true

end
