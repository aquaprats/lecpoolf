class AddCreditToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :credit, :integer,:default=>1
  end

  def self.down
    remove_column :users, :credit
  end
end
