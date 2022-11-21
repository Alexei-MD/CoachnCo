class AddBioToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :text
    add_column :users, :experience, :integer
  end
end
