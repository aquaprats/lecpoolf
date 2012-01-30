class AddSellToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :sell, :integer,:default=>0
  end

  def self.down
    remove_column :books, :sell
  end
end
