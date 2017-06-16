class User < ApplicationRecord
  has_secure_password

  has_many :reservations
  has_one :restaurant

  validates :name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, format: { with: /\A\w+\@\w+\./ }
  validates :phone_number, presence: true, format: { with: /\d{3}\w+\d{3}\-\d{4}\z/ }
end
