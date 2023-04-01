class Listing < ApplicationRecord
    has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "default.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, :description, :price, presence: true
  validates :price, numericality: {greater_than: 0}
end
