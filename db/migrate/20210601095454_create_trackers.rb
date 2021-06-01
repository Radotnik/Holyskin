class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.integer :rating
      t.text :notes
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
