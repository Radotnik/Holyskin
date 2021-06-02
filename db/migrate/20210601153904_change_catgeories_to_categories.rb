class ChangeCatgeoriesToCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :catgeories, :categories
  end
end
