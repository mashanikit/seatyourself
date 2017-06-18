class Reservation < ApplicationRecord


  belongs_to :restaurant
  belongs_to :user

  validates :size, numericality: true

  validate :reso_in_hours


  validate :reso_date_not_in_past


  def reso_date_not_in_past
    if date.present? && date < Date.today
      errors.add(:date, "Can't be in the Past")
    end
  end

  def reso_in_hours
      if self.time < self.restaurant.opens
        errors.add(:time, "Restaurant is not open")
      else self.time > self.restaurant.closes
        errors.add(:time, "Restaurant is not open")
      end
  end







end
