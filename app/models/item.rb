class Item < ApplicationRecord
  belongs_to   :user
  # belongs_to   :transactions
  has_many    :comments
  has_many    :item_images
  accepts_nested_attributes_for :item_images
end
