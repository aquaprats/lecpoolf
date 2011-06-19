class CreateForums < ActiveRecord::Migration
  def self.up
    create_table :forums do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.timestamps
    end
add_index :forums, :user_id 
  end

  def self.down
    drop_table :forums
  end
end
