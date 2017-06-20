class Reservation < ApplicationRecord


  belongs_to :restaurant
  belongs_to :user

  validates :size, presence: true, numericality: true
  # validates :max_resos

  validate :reso_date_not_in_past
  validate :reso_time_is_during_open_hours
  validate :has_room


  def reso_time_is_during_open_hours
    if time.present? && time >= self.restaurant.opens && time <= self.restaurant.closes
    else
      errors.add(:time, "Sorry, the Restaurant is Closed at This Time, please enter another")
    end
  end
  
  def has_room
    if restaurant.current_capacity(date, time) >= size
    else
      errors.add(:size, "We are currently full, please choose another time")
    end
  end

  def reso_date_not_in_past
    if date.present? && self.date > Date.today
    else
      errors.add(:date, "Can't be in the Past")
    end
  end

end
  # validates :max_resos

#   validate :reso_date_not_in_past
#   validate :reso_time_is_during_open_hours
#
#
# def reso_time_is_during_open_hours
#   if time.present? && time <= @restaurant.opens && time >= @restaurant.closes
#     errors.add(:time, "Sorry, the Restaurant is Closed at This Time, please enter another")
#   end
# end
#
#
#
#   def reso_date_not_in_past
#     if date.present? && date < Date.today
#       errors.add(:date, "Can't be in the Past")
#     end
#   end
