class CreateCatgeories < ActiveRecord::Migration[6.0]
  def change
    create_table :catgeories do |t|
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end