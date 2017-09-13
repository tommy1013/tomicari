class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  accepts_nested_attributes_for :thumbnails
end
