class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :category_id
      t.integer :min_price
      t.integer :max_price

      t.timestamps null: false
    end
  end
end
