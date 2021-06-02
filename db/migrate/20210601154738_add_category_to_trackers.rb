class AddCategoryToTrackers < ActiveRecord::Migration[6.0]
  def change
    add_reference :trackers, :category, null: false, foreign_key: true
  end
end
