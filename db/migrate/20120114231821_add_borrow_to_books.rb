class AddBorrowToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :borrow, :integer
  end

  def self.down
    remove_column :books, :borrow
  end
end
