class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.timestamps
    end
add_index :comments, :user_id  
  end

  def self.down
    drop_table :comments
  end
end
