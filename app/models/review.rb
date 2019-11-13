class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: true
  validates_numericality_of :rating, greater_than_or_equal_to: 0
  validates_numericality_of :rating, less_than_or_equal_to: 5
end

# validates :rating, presence: true, numericality: true
# validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
