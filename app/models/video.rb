
class Video < ActiveRecord::Base
belongs_to :user
attr_accessible :video_code ,:title
acts_as_voteable 
validates :title, :presence => true
validates :video_code, :presence => true, :uniqueness=>true

end
