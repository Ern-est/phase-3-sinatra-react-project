class AddUserIdColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :memes, :user_id, :integer
  end
end
