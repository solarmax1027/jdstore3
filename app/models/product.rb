class Product < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader

  has_many :reviews

  geocoded_by :address
  after_validation :geocode
end
