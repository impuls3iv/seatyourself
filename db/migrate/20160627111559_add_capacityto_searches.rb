class AddCapacitytoSearches < ActiveRecord::Migration
  def change
    add_column :searches, :capacity, :integer
  end
end
