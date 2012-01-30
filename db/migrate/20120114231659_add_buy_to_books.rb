class AddBuyToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :buy, :integer,:default=>0
  end

  def self.down
    remove_column :books, :buy
  end
end
