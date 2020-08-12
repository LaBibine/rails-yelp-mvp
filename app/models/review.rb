class Review < ApplicationRecord
  belongs_to :restaurant
  validates  :restaurant, :content, presence: true
  validates  :rating, presence: true
  validates  :rating, inclusion: { in: (0..5) }, numericality: true
end
