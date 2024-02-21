class Review < ApplicationRecord
  belongs_to :restaurant
  # Validations
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: 0..5

end
