class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :conversations

  
  validates :title, :presence => true
  validates :description, :presence => true
end


