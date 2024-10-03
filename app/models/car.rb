class Car < ApplicationRecord
  belongs_to :owner

  has_many :favorites
  has_many :reviews

  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :fuel, presence: true
end
