class Category < ApplicationRecord
  has_many :trackers, dependent: :destroy

  # validates :title, presence: true, inclusion: { in: ['sleep', 'stress', 'workout', 'diet', 'sun', 'humidity', 'temperature', 'pollution', 'medication', 'products', 'supplements', 'treatments'] }
  # validates :group, presence: true, inclusion: { in: ['skincare', 'environmental', 'lifestyle']}

  CATEGORY = {
  skincare: ['medications', 'products', 'supplements', 'treatments'],
  environmental: ['sun', 'humidity', 'temperature', 'pollution'],
  lifestyle: ['sleep', 'stress', 'workout', 'diet']
  }

  validate :pairs_do_match

  def pairs_do_match
    unless CATEGORY[self.group.to_sym].include?(self.title)
      errors.add(:key, "key and value pair don't match")
      errors.add(:value, "key and value pair don't match")
    end
  end
end
