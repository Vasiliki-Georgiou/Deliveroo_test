class FoodItem < ApplicationRecord
  has_many :menu_food_items
  has_many :menus, through: :menu_food_items
  validates :name, presence: true, length: { minimum: 3 }
  validates :price, presence: true
end
