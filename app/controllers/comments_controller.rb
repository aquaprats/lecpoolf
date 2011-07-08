class CommentsController < ApplicationController
  before_filter :load_forum_and_conversation,:except=>:vote_upcm
  before_filter :authenticate
  
  def vote_upcm
    begin
      current_user.vote_for(@comment = Comment.find(params[:id]))
      @comment = Comment.find(params[:id])
      @conversation = Conversation.find(@comment.conversation_id)
       redirect_to @conversation
       
    rescue ActiveRecord::RecordInvalid
     @comment = Comment.find(params[:id])
      @conversation = Conversation.find(@comment.conversation_id)
     redirect_to @conversation
    end
  end 

  
  # GET /comments
  # GET /comments.xml
  def index
    @comments = @conversation.comments.all

    respond_to do |format|
      format.html { redirect_to(conversation_path(@conversation)) }
      format.xml { render :xml => @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.xml
  def show
    @comment = @conversation.comments.find(params[:id])

    respond_to do |format|
      format.html { redirect_to(conversation_path(@conversation)) }
      format.xml { render :xml => @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.xml
  def new
    @comment = @conversation.comments.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = @conversation.comments.new(params[:comment])
  @comment.user_id=current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to(conversation_path(@conversation), :notice => 'Comment was successfully created.') }
        format.xml { render :xml => @comment, :status => :created, :location => @comment }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(@comment, :notice => 'Comment was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(comments_url) }
      format.xml { head :ok }
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

 def load_forum_and_conversation
    
      @conversation = Conversation.find(params[:conversation_id])
      @forum = @conversation.forum
  
   end

end
