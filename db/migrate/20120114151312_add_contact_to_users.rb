class AddContactToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :contact, :integer
  end

  def self.down
    remove_column :users, :contact
  end
end
