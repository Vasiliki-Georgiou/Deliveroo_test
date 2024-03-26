class MenuFoodItem < ApplicationRecord
  belongs_to :food_item
  belongs_to :menu
end
