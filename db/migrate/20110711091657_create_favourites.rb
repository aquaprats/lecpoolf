class CreateFavourites < ActiveRecord::Migration
  def self.up
    create_table :favourites do |t|
      t.integer :attachment_id
      t.integer :user_id
      t.integer :video_id
      t.string :category
      t.timestamps
    end
  add_index :favourites, :user_id
  add_index :favourites, :attachment_id
  add_index :favourites, :video_id
  end

  def self.down
    drop_table :favourites
  end
end
