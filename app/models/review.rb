class Review < ApplicationRecord
  belongs_to :restaurant
  validates :restaurant_id, :content, presence: true
  validates :rating, inclusion: { in: 0..5, allow_nil: false }, numericality: { only_integer: true }
end
