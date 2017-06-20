class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, format: { with: /\A\w+\@\w+\./ }
  validates :phone_number, presence: true, format: { with: /\A.*\d{3}.*\d{3}.*\d{4}\z/ }

  ALLOWED_ROLES = ["owner", "customer"]

  def number
    phone_number = self.phone_number.gsub(/[^0-9]/, '')
    "(#{phone_number[0..2]}) #{phone_number[3..5]}-#{phone_number[6..9]}"
  end


end
