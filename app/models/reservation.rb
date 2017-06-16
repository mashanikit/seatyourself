class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :size, numericality: true
end
