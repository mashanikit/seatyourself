class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, :class_name => 'User', optional: true

  validates :name, :neighbourhood, :address, :cuisine_type, presence: true
  validates :opens, :closes, :capacity, numericality: true
end
