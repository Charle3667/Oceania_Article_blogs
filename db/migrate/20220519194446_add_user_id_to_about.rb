class AddUserIdToAbout < ActiveRecord::Migration[7.0]
  def change
    add_column :abouts, :user_id, :integer
    add_index :abouts, :user_id
  end
end
