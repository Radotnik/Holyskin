class Tracker < ApplicationRecord
  belongs_to :treatment
  has_many_attached :photos
  belongs_to :category

  validates :rating, presence: true, numericality: { in: 0..100 }
  validates :notes, presence: true
end
