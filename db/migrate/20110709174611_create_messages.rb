class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|

      t.string :subject
      t.string :email
      t.text :body
      t.string :category
      t.integer :user_id
      t.timestamps
    end
add_index :messages, :user_id 
  end

  def self.down
    drop_table :messages
  end
end
