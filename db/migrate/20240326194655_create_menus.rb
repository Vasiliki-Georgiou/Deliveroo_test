class CreateMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.float :price
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
