class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
