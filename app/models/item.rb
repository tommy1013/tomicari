class Item < ApplicationRecord
  belongs_to    :user
  has_one       :trade
  has_many      :comments
  has_many      :item_images

  accepts_nested_attributes_for :trade
  accepts_nested_attributes_for :item_images,
                                :allow_destroy => true
                                # :reject_if     => :reject_item_image

  def reject_item_image(attributed)
    attributed['item_images'].blank?
  end
end
