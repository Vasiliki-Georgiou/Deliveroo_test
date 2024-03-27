class Customer < ApplicationRecord
  has_many :orders
  validates :name, presence: true, length: { minimum: 5 }
  validates :address, presence: true, length: { minimum: 10 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 5 }, format: URI::MailTo::EMAIL_REGEXP
end
