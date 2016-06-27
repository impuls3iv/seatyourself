class ChangeCategoryFormatInSearches < ActiveRecord::Migration
  def change
      change_column :searches, :category, :string
  end
end
