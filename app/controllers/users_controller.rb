class UsersController < ApplicationController
before_filter :authenticate, :only => [ :index,:show,:edit,:update,:new_password]
before_filter :correct_user, :only => [:show,:new_password,:edit, :update]
before_filter :admin_user, :only =>:destroy


def course1
@user = current_user
@title = @user.cn1.upcase
end
def course1b
@user = current_user
@title = @user.cn1.upcase
end
def course1l
@user = current_user
@title = @user.cn1.upcase
end
def course1a
@user = current_user
@title = @user.cn1.upcase
end
def course1q
@user = current_user
@title = @user.cn1.upcase
end
def course1e
@user = current_user
@title = @user.cn1.upcase
end
def course1v
@user = current_user
@title = @user.cn1.upcase
end


def course2
@user = current_user
@title = @user.cn2.upcase
end
def course2b
@user = current_user
@title = @user.cn2.upcase
end
def course2l
@user = current_user
@title = @user.cn2.upcase
end
def course2a
@user = current_user
@title = @user.cn2.upcase
end
def course2q
@user = current_user
@title = @user.cn2.upcase
end
def course2e
@user = current_user
@title = @user.cn2.upcase
end
def course2v
@user = current_user
@title = @user.cn2.upcase
end

def course3
@user = current_user
@title = @user.cn3.upcase
end
def course3b
@user = current_user
@title = @user.cn3.upcase
end
def course3l
@user = current_user
@title = @user.cn3.upcase
end
def course3a
@user = current_user
@title = @user.cn3.upcase
end
def course3q
@user = current_user
@title = @user.cn3.upcase
end
def course3e
@user = current_user
@title = @user.cn3.upcase
end
def course3v
@user = current_user
@title = @user.cn3.upcase
end


def course4
@user = current_user
@title = @user.cn4.upcase
end
def course4b
@user = current_user
@title = @user.cn4.upcase
end
def course4l
@user = current_user
@title = @user.cn4.upcase
end
def course4a
@user = current_user
@title = @user.cn4.upcase
end
def course4q
@user = current_user
@title = @user.cn4.upcase
end
def course4e
@user = current_user
@title = @user.cn4.upcase
end
def course4v
@user = current_user
@title = @user.cn4.upcase
end
def course5
@user = current_user
@title = @user.cn5.upcase
end
def course5b
@user = current_user
@title = @user.cn5.upcase
end
def course5l
@user = current_user
@title = @user.cn5.upcase
end
def course5a
@user = current_user
@title = @user.cn5.upcase
end
def course5q
@user = current_user
@title = @user.cn5.upcase
end
def course5e
@user = current_user
@title = @user.cn5.upcase
end
def course5v
@user = current_user
@title = @user.cn5.upcase
end
def course6
@user = current_user
@title = @user.cn6.upcase
end
def course6b
@user = current_user
@title = @user.cn6.upcase
end
def course6l
@user = current_user
@title = @user.cn6.upcase
end
def course6a
@user = current_user
@title = @user.cn6.upcase
end
def course6q
@user = current_user
@title = @user.cn6.upcase
end
def course6e
@user = current_user
@title = @user.cn6.upcase
end
def course6v
@user = current_user
@title = @user.cn6.upcase
end


def course7
@user = current_user
@title = @user.cn7.upcase
end
def course7b
@user = current_user
@title = @user.cn7.upcase
end
def course7l
@user = current_user
@title = @user.cn7.upcase
end
def course7a
@user = current_user
@title = @user.cn7.upcase
end
def course7q
@user = current_user
@title = @user.cn7.upcase
end
def course7e
@user = current_user
@title = @user.cn7.upcase
end
def course7v
@user = current_user
@title = @user.cn7.upcase
end

def index
@title = "All Users"

@users = User.paginate(:page => params[:page])
  @users.sort! { |a,b| a.name.downcase <=> b.name.downcase }
end
def show
@user = User.find(params[:id])

@title = @user.name
end
def new
@user = User.new
@title = "Sign Up"
end
def create
@user = User.new(params[:user])





if @user.save
# sign_in @user
flash[:success] = "Welcome to lecpool!"
redirect_to signin_path

@user.send_activate
flash[:notice] = "Signup successful. Activation e-mail has been sent to your IIT-K email id."


else
flash[:warning] = "Please try again - problems saving your details to the database"
@title = "Sign up"
render 'new'
end
end



 def deleteu
		
			@user=User.find(params[:id])
			if @user == nil
				flash[:warning] = "You must be logged in to delete yourself"
				redirect_to signin_path
			else
				
				@user.destroy
				flash[:notice] = "You were deleted from the database and logged out"
				redirect_to signout_path
			end
		end
    def activate
		
			@user=User.find(params[:id])
			 
			if @user.activate?
				flash[:notice]="You have been activated and can now log in"
				redirect_to signin_path
			else
				flash[:error]="We could not activate you.  Send us email."
				redirect_to signin_path
			end
    end
  


def new_password
@title = "New Password"
		           @user=User.find(params[:id])
			
			if @user.update_attributes(:password=>params[:password], :password_confirmation => params[:password_confirmation])
				flash[:success]="Password Changed"
				redirect_to users_show_path
			end
		
  end

  def forgot_password
      @title = "Forgot Password"
		     if request.post?
			u= User.find_by_email(params[:user][:email])
			if u
				if u.send_new_password
					flash[:success]  = "A new password has been sent by email."
					redirect_to  signin_path
				else
					flash[:error]  = "EMail address OK, but couldn't send password"
					redirect_to  signin_path
				end
			else
				flash[:error] = "No such email address on record"
				redirect_to  signin_path
			end
		end
  end


def edit
@user = User.find(params[:id])
@title = "Edit Profile"
end
def update
@user = User.find(params[:id])
if @user.update_attributes(params[:user])
flash[:success] = "Changes Successfuly Saved!"
redirect_to @user
else
@title = "Edit Profile"
render 'edit'
end
end

def info
@title = "Info"
@user=User.find(params[:id])
end

def destroy
User.find(params[:id]).destroy

flash[:success] = "User destroyed."
redirect_to users_path
end

def search2
  @search = User.search(params[:search])
   @users = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @users = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  @title = "Search"
end

private
def authenticate
deny_access unless signed_in?
end

def correct_user
@user = User.find(params[:id])
redirect_to(root_path) unless current_user?(@user)
end

def admin_user
redirect_to(root_path) unless current_user.admin?
end

end
