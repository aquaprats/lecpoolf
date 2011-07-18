class VideosController < ApplicationController

before_filter :authenticate


def vote_up
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)      
      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end
def vote_down
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end

def vote_up1v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1v'
    end
  end
def vote_down1v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1v'
    end
  end
def vote_up2v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2v'
    end
  end
def vote_down2v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2v'
    end
  end
def vote_up3v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3v'
    end
  end
def vote_down3v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3v'
    end
  end
def vote_up4v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4v'
    end
  end
def vote_down4v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4v'
    end
  end
def vote_up5v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5v'
    end
  end
def vote_down5v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5v'
    end
  end
def vote_up6v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6v'
    end
  end
def vote_down6v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6v'
    end
  end
def vote_up7v
    begin
      current_user.vote_for(@video = Video.find(params[:id]))
      @video.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7v' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7v'
    end
  end
def vote_down7v
    begin
      current_user.vote_against(@video = Video.find(params[:id]))
      @video.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course7v'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7v'
    end
  end

def index
 @title="Videos" 
end

def new
 @title="New Video" 
 @video = Video.new
end 

def search2
    @title="Search" 
    @search2 = Video.search(params[:search])
    @videos = @search2.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @videos = @search2.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
 def destroy
    @video = Video.find(params[:id])
    @video.destroy
    flash[:success]="Video Deleted"
    respond_to do |format|
      format.html { redirect_to(:back) }
      format.xml { head :ok }
    end
  end
 def create     
       @title="New Video" 
        return if params[:video].blank?

       @video = Video.new
        @video.course=params[:video][:course]
        @video.title=params[:video][:title]
        @video.video_code = params[:video][:video_code]
        @video.user_id=current_user.id
        @video.vcount=0
        if @video.save
            flash[:notice] = "Thank you for your submission.If video doesn't appear then you haven't provided a correct youtube link !"
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
