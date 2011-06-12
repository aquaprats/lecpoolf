class UsersController < ApplicationController
before_filter :authenticate, :only => [ :index,:edit,:update]
before_filter :correct_user, :only => [:edit, :update]
before_filter :admin_user, :only => :destroy


def course1
@user=User.find(params[:id])
end

def course2
@user=User.find(params[:id])
end
def course3
@user=User.find(params[:id])
end
def course4
@user=User.find(params[:id])
end
def course5
@user=User.find(params[:id])
end
def course6
@user=User.find(params[:id])
end

def course7
@user=User.find(params[:id])
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
sign_in @user
flash[:success] = "Welcome to lecpool!"
redirect_to @user

@user.send_activate
flash[:notice] = "Signup successful. Activation e-mail has been sent"


else
flash[:warning] = "Please try again - problems saving your details to the database"
@title = "Sign up"
render 'new'
end
end



 def delete
		
			@u=User.find(params[:id])
			if @u == nil
				flash[:warning] = "You must be logged in to delete yourself"
				redirect_to signin_path
			else
				
				u.destroy
				flash[:notice] = "You were deleted from the database and logged out"
				redirect_to signout_path
			end
		end
    def activate
		
			@user=User.find(params[:id])
			 
			if @user.activate?
				flash[:notice]="You have been activated and can now log in"
				redirect_to @user
			else
				flash[:warning]="We could not activate you.  Send us email."
				redirect_to signin_path
			end
    end
  





def edit
@user = User.find(params[:id])
@title = "Edit user"
end
def update
@user = User.find(params[:id])
if @user.update_attributes(params[:user])
flash[:success] = "Profile updated."
redirect_to @user
else
@title = "Edit user"
render 'edit'
end
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
