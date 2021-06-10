class Treatment < ApplicationRecord
  belongs_to :user
  has_many :trackers

  validates :skin_condition, presence: true, inclusion: { in: ['Eczema', 'Rash', 'Acne', 'Psoriasis'] }
  validates :start_date, presence: true
  validates :status, presence: true, inclusion: { in: ['start', 'in progress', 'end'] }
end
