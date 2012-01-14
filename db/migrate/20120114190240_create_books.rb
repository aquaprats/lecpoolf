class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.integer :user_id
      t.string :bname
      t.string :author
      t.string :edition
      t.string :cn
      t.string :category

      t.timestamps
    end
add_index :books,:user_id
  end

  def self.down
    drop_table :books
  end
end
