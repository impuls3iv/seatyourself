class AddTimeToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :time, :date_field
  end
end
