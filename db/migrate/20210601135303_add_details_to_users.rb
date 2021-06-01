class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :skin_type, :string
    add_column :users, :skin_color, :string
  end
end
