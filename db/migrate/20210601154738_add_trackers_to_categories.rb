class AddTrackersToCategories < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :tracker, null: false, foreign_key: true
  end
end
