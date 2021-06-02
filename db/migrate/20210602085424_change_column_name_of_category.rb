class ChangeColumnNameOfCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :categories, :type, :group
  end
end
