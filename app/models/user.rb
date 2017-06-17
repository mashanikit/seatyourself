class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: "owner_id"

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, format: { with: /\A\w+\@\w+\./ }
  validates :phone_number, presence: true, format: { with: /\d{3}\.*\d{3}\.*\d{4}\z/ }
end
