class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
           t.column :filename, :string
           t.column :content_type, :string
           t.column :data, :binary
           t.column :user_id, :integer
           t.column :course, :string
    end
add_index :attachments, :user_id  
end

  def self.down
    drop_table :attachments
  end
end
