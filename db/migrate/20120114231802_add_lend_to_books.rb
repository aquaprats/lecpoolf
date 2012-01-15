class AddLendToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :lend, :integer
  end

  def self.down
    remove_column :books, :lend
  end
end
