class ForumsController < ApplicationController

before_filter :authenticate
before_filter :check, :only=>[:destroy,:edit]

  # GET /forums
  # GET /forums.xml
   
  def vote_upf
    begin
      current_user.vote_for(@forum = Forum.find(params[:id]))

         redirect_to :controller => 'forums', :action => 'index' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'forums', :action => 'index'
    end
  end

  def index
    @forums = Forum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @forums }
    end
  end

  # GET /forums/1
  # GET /forums/1.xml
  def show
    @forum = Forum.find(params[:id])
    @conversations = @forum.conversations.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @forum }
    end
  end

  # GET /forums/new
  # GET /forums/new.xml
  def new
    @forum = Forum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @forum }
    end
  end

  # GET /forums/1/edit
  def edit
    @forum = Forum.find(params[:id])
  end

  # POST /forums
  # POST /forums.xml
  def create
    @forum = Forum.new(params[:forum])
     @forum.user_id=current_user.id
    respond_to do |format|
      if @forum.save
        format.html { redirect_to(@forum, :notice => 'Forum was successfully created.') }
        format.xml { render :xml => @forum, :status => :created, :location => @forum }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @forum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /forums/1
  # PUT /forums/1.xml
  def update
    @forum = Forum.find(params[:id])

    respond_to do |format|
      if @forum.update_attributes(params[:forum])
        format.html { redirect_to(@forum, :notice => 'Forum was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @forum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /forums/1
  # DELETE /forums/1.xml
  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy

    respond_to do |format|
      format.html { redirect_to(forums_url) }
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

def check
@forum=Forum.find(params[:id])
if current_user.id!=@forum.user_id
flash[:error]="You are not authorized to edit/delete this forum !"
redirect_to forums_path


end
end

end


