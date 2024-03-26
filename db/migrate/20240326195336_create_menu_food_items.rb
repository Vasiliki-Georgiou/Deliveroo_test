class CreateMenuFoodItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_food_items do |t|
      t.references :food_item, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
