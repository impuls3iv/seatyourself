class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.integer :people
      t.integer :user_id
      t.integer :restaurant_id
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
