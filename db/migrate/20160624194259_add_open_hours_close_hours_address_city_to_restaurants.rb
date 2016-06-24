class AddOpenHoursCloseHoursAddressCityToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :open_hour, :integer
    add_column :restaurants, :close_hour, :integer
    add_column :restaurants, :address, :string
    add_column :restaurants, :city, :string
  end
end
