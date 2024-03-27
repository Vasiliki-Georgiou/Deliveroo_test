class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :order_menus
  has_many :orders, through: :order_menus
  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :quantity
  validates :price, presence: true
end
