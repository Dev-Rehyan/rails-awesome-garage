class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, length: { minimum: 6, too_short: "must have at least 6 characters" }
  validates :rating, presence: true, numericality: { only_integer: true }
end
