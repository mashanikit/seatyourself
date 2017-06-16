class Restaurant < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :neighbourhood, presence: true
  validates :address, presence: true
  validates :cuisine_type, presence: true
end
