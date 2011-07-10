class Message < ActiveRecord::Base
belongs_to :user
 validates :subject, :presence => true
  validates :body, :presence => true
  validates :email, :presence => true

end
