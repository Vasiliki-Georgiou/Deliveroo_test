class Restaurant < ApplicationRecord
  has_many :menus
  validates :name, presence: true, length: { minimum: 5 }
  validates :address, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :specialty_cuisine, presence: true, length: { minimum: 5 }
end
