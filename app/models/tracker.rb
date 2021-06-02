class Tracker < ApplicationRecord
  belongs_to :treatment
  has_many :categories
end
