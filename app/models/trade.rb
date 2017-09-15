class Trade < ApplicationRecord
  belongs_to :item, optional: true
  # belongs_to :user
  # accepts_nested_attributes_for :item
end
