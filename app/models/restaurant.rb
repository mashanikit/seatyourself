class Restaurant < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :neighbourhood, presence: true
  validates :address, presence: true
  validates :cuisine_type, presence: true
  validates :opens, numericality: true
  validates :closes, numericality: true
  validates :capacity, numericality: true
end
