class AddIndexToSortedDowncase < ActiveRecord::Migration
  def change
      add_index :words, :sorted_downcase
  end
end
