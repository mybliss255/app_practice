class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
