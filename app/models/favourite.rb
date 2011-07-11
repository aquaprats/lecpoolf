class Favourite < ActiveRecord::Base
belongs_to :attachment
belongs_to :user
belongs_to :video

end
