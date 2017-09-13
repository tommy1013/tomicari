class Transaction < ApplicationRecord
  has_one :items
  belongs_to :users
end
