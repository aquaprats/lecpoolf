class Book < ActiveRecord::Base
belongs_to :user
#attr_accessible :course,:buy,:sell,:borrow,:lend
mount_uploader :image, ImageUploader

def upbuy
#int id = current_user.id
update_attribute("buy",1)
#update_attribute("bid",id)
end

def upsell
update_attribute("sell",1)
end
def upborrow
update_attribute("borrow",1)
end
def uplend
update_attribute("lend",1)
end

end
