class RemovePhotosFromTrackers < ActiveRecord::Migration[6.0]
  def change
    remove_column :trackers, :photo
  end
end
