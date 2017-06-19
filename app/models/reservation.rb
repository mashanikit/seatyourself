class Reservation < ApplicationRecord


  belongs_to :restaurant
  belongs_to :user

  validates :size, numericality: true
  # validates :max_resos

  validate :reso_date_not_in_past
  validate :reso_time_is_during_open_hours


def reso_time_is_during_open_hours
  if time.present? && time <= @restaurant.opens && time >= @restaurant.closes
    errors.add(:time, "Sorry, the Restaurant is Closed at This Time, please enter another")
  end
end



  def reso_date_not_in_past
    if date.present? && date < Date.today
      errors.add(:date, "Can't be in the Past")
    end
  end

end
