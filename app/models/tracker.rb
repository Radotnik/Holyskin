class Tracker < ApplicationRecord
  belongs_to :treatment
  has_one_attached :photo
  belongs_to :category

  validates :rating, presence: true, numericality: { in: 0..100 }
  validates :notes, presence: true


end
