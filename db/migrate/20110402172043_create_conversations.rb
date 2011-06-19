class CreateConversations < ActiveRecord::Migration
  def self.up
    create_table :conversations do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
add_index :conversations, :user_id  
  end

  def self.down
    drop_table :conversations
  end
end
