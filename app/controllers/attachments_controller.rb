class AttachmentsController < ApplicationController

def new
 @attachment = Attachment.new
end    
def me 
a = Attachment.find(params[:id])
send_data   a.data, :filename => a.filename, :type => a.content_type
    end

def show
        #@attachment = Attachment.find(params[:id])
       #send_data  @attachment.id, @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
    end
   def index
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index2
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index3
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index4
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index5
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index6
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index7
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index8
    @search = Attachment.search(params[:search])
    @attachments = @search.all   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
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

