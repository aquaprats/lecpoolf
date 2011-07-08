class Comment < ActiveRecord::Base
  belongs_to :conversation
  belongs_to :user
  acts_as_voteable 
  validates :content, :presence => true

  default_scope :order => 'created_at DESC'
end


