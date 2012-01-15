class AddCreditToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :credit, :integer
  end

  def self.down
    remove_column :users, :credit
  end
end
