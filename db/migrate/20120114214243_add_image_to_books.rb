class AddImageToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :image, :string
  end

  def self.down
    remove_column :books, :image
  end
end
