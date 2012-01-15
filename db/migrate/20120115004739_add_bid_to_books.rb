class AddBidToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :bid, :integer
  end

  def self.down
    remove_column :books, :bid
  end
end
