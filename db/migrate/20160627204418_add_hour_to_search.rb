class AddHourToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :hour, :integer
  end
end
