class Tracker < ApplicationRecord
  belongs_to :treatment
  belongs_to :category

  validates :rating, presence: true, numericality: { in: 0..10 }
  validates :notes, presence: true
  validates :photo, presence: true

end
