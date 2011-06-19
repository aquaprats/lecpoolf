class Conversation < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many :comments

  validates :title, :presence => true
  validates :description, :presence => true
end
