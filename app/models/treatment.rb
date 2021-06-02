class Treatment < ApplicationRecord
  belongs_to :user
  has_many :trackers

  validates :skin_condition, presence: true, inclusion: { in: ['eczema', 'rash', 'acne', 'psoriasis'] }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: ['start', 'in progress', 'end'] }
end

