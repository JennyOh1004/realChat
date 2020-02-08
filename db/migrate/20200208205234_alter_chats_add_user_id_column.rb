class AlterChatsAddUserIdColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :chats, :user_id, :integer
  	add_index :chats, :user_id
  end
end
