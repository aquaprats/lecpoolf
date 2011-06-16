
class Video < ActiveRecord::Base
belongs_to :user
attr_accessible :video_code ,:user_id,:title
acts_as_voteable 
validates :title, :presence => true
validates :video_code, :presence => true, :uniqueness=>true

end
