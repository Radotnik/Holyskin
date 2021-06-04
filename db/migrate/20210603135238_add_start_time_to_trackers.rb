class AddStartTimeToTrackers < ActiveRecord::Migration[6.0]
  def change
    add_column :trackers, :start_time, :datetime , default: -> { 'NOW()' }
  end
end
