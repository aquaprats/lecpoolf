
require 'digest'
class User < ActiveRecord::Base

   attr_accessor :password,:password_confirmation
attr_accessible :name, :email, :password, :password_confirmation,:rollno,:department,:cn1,
:cn2,:cn3,:cn4,:cn5,:cn6,:cn7,:address,:contact, :image, :remote_image_url

mount_uploader :image, ImageUploader
has_many :attachments,:dependent => :destroy
has_many :videos,:dependent => :destroy
has_many :forums,:dependent => :destroy
has_many :conversations,:dependent => :destroy
has_many :comments,:dependent => :destroy
has_many :messages,:dependent => :destroy
has_many :favourites,:dependent => :destroy
has_many :books,:dependent => :destroy
acts_as_voter
before_save :encrypt_password, :unless => "password.blank?"


  email_regex = /\A[\w+\-.]+@iitk.ac.in/i
validates :name, :presence => true,
:length => { :maximum => 50 }
validates :email, :presence => true,
:format => { :with => email_regex ,:message=>"id of IITK should be used "},
:uniqueness => { :case_sensitive => false }
validates :password, :presence => true,
:confirmation => true,
:length => { :within => 6..40 }
#before_save :encrypt_password

def has_password?(submitted_password)
encrypted_password == encrypt(submitted_password)
end
def self.authenticate(email, submitted_password)
user = find_by_email(email)
return nil if user.nil?
return user if user.has_password?(submitted_password)
end
def self.authenticate_with_salt(id, cookie_salt)
user = find_by_id(id)
(user && user.salt == cookie_salt) ? user : nil
end




def send_activate
		Notifications.deliver_activate(self.email,self.name, self.id)
	end

def activate?
		update_attribute("activated",true)
		if self.activated
		  return true
		else
		  return false
		end
	end

 
def send_new_password
		new_pass = User.random_string(10)
		self.password = self.password_confirmation = new_pass
		self.save
		Notifications.deliver_forgot_password(self.email, new_pass)
	end

private
def encrypt_password
self.salt = make_salt if new_record?
self.encrypted_password = encrypt(password) 
end
def encrypt(string)
secure_hash("#{salt}--#{string}")
end
def make_salt
secure_hash("#{Time.now.utc}--#{password}")
end
def secure_hash(string)
Digest::SHA2.hexdigest(string)
end
def self.random_string(len)
		#generat a random password consisting of strings and digits
		chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
		newpass = ""
		1.upto(len) { |i| newpass << chars[rand(chars.size-1)] }
		return newpass
	end

end
   
