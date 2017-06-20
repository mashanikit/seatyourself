class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :owner, :class_name => 'User', optional: true

  validates :name, :neighbourhood, :address, :cuisine_type, presence: true
  validates :opens, :closes, :capacity, numericality: true

  def current_capacity(date, time)
    total_size = 0
    reservations.where(date: date, time: time).each do |reservation|
      total_size += reservation.size
    end
    capacity - total_size
  end

  def operating_hours
    "From #{self.opens}:00 to #{self.closes}:00" 
  end

end

# Client.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)
