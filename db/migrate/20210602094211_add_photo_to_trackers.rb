class AddPhotoToTrackers < ActiveRecord::Migration[6.0]
  def change
    add_column :trackers, :photo, :string
  end
end
