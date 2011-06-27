class AttachmentsController < ApplicationController

def view
@t=Attachment.find(params[:id])
end

def new
 @attachment = Attachment.new
end 
  
def me 
a = Attachment.find(params[:id])
send_data   a.data, :filename => a.filename, :type => a.content_type 
    end
def me1 
a = Attachment.find(params[:id])
send_data   a.data, :filename => a.filename, :type => a.content_type ,:disposition => 'inline'
    end

def vote_up
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end
def vote_down
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      render :show => true
    rescue ActiveRecord::RecordInvalid
      render :show => true
    end
  end
def vote_up1
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course1' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1'
    end
  end
def vote_down1
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course1'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1'
    end
  end
def vote_up2
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course2' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2'
    end
  end
def vote_down2
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course2'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2'
    end
  end
def vote_up3
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course3' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3'
    end
  end
def vote_down3
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course3'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3'
    end
  end
def vote_up4
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course4' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4'
    end
  end
def vote_down4
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course4'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4'
    end
  end
def vote_up5
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course5' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5'
    end
  end
def vote_down5
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course5'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5'
    end
  end
def vote_up6
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course6' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6'
    end
  end
def vote_down6
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course6'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6'
    end
  end

def vote_up7
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))

         redirect_to :controller => 'users', :action => 'course7' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7'
    end
  end
def vote_down7
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))

      redirect_to :controller => 'users', :action => 'course7'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7'
    end
  end
def show
        #@attachment = Attachment.find(params[:id])
       #send_data  @attachment.id, @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
    end
   def index
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index2
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index3
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index4
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
     @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index5
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index6
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate? 
 end
def index7
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index8
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end

    def create      
        return if params[:attachment].blank?
       
       @attachment = Attachment.new
        @attachment.course=params[:attachment][:course]
        @attachment.uploaded_file = params[:a]
        @attachment.user_id=current_user.id
        if @attachment.save
            flash[:notice] = "Thank you for your submission..."
            redirect_to :action => "show"
        else
            flash[:error] = "There was a problem submitting your attachment."
            render :action => :new
        end
    end
end

