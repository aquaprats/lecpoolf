class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :conversations

  acts_as_voteable 
  validates :title, :presence => true
  validates :description, :presence => true
end


