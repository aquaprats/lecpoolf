class UsersController < ApplicationController
before_filter :authenticate, :only => [ :index,:edit,:update,:new_password]
before_filter :correct_user, :only => [:edit, :update]
before_filter :admin_user, :only =>:destroy


def course1

end

def course1l

end
def course1a

end
def course1q

end
def course1e

end
def course1v

end


def course2

end
def course2l

end
def course2a

end
def course2q

end
def course2e

end
def course2v

end

def course3

end

def course3l

end
def course3a

end
def course3q

end
def course3e

end
def course3v

end

def course4
end

def course4l

end
def course4a

end
def course4q

end
def course4e

end
def course4v

end
def course5

end

def course5l

end
def course5a

end
def course5q

end
def course5e

end
def course5v

end
def course6
end
def course6l

end
def course6a

end
def course6q

end
def course6e

end
def course6v

end


def course7
end

def course7l

end
def course7a

end
def course7q

end
def course7e

end
def course7v

end

def index
@title = "All users"
@users = User.paginate(:page => params[:page])
end
def show
@user = User.find(params[:id])

@title = @user.name
end
def new
@user = User.new
@title = "Sign up"
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
		           @user=current_user
			
			if @user.update_attributes(:password=>params[:password], :password_confirmation => params[:password_confirmation])
				flash[:success]="Password Changed"
				redirect_to users_show_path
			end
		
  end

  def forgot_password
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
@title = "Edit user"
end
def update
@user = User.find(params[:id])
if @user.update_attributes(params[:user])
flash[:success] = "Changes Successfuly Saved!"
redirect_to @user
else
@title = "Edit user"
render 'edit'
end
end

def info
@user=User.find(params[:id])
end

def destroy
User.find(params[:id]).destroy

flash[:success] = "User destroyed."
redirect_to users_path
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
