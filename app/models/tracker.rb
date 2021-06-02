class Tracker < ApplicationRecord
  belongs_to :treatment
  belongs_to :category
end
