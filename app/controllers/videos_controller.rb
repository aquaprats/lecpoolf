class VideosController < ApplicationController

before_filter :authenticate


def vote_up
    begin
      current_user.vote_for(@video = Video.find(params[:id]))

      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end
def vote_down
    begin
      current_user.vote_against(@video = Video.find(params[:id]))

      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end

def index
end

def new
 @video = Video.new
end 


 def create      
        return if params[:video].blank?

       @video = Video.new
        @video.title=params[:video][:title]
        @video.video_code = params[:video][:video_code]
        @video.user_id=current_user.id
        if @video.save
            flash[:notice] = "Thank you for your submission...If video uploaded doesn't appear then you haven't provided a correct youtube link !"
            redirect_to :action => "index"
        else
            flash[:error] = "All fields are required,  please check. If still it doesn't upload then this particular video has already been uploaded by someone else!"
            render :action => :create
        end
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
