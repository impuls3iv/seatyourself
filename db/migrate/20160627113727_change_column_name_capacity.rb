class ChangeColumnNameCapacity < ActiveRecord::Migration
  def change
        rename_column :searches, :capacity, :people
  end
end
