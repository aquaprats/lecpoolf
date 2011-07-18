class MessagesController < ApplicationController
before_filter :authenticate


def index
  @title="Inbox"
end

 def new
     @title="New Message"
    @message = Message.new

   
    
  end

 def create
     @title="New Message"
    @message = Message.new(params[:message])
   
     @message.user_id=current_user.id
   
      if @message.save
         flash[:success]="Message Sent"
        redirect_to messages_path
      else
         flash[:error]="Message could not be sent "
       redirect_to(:back)
      end
    
  end

 def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:success]="Message Deleted"
    respond_to do |format|
      format.html { redirect_to(messages_url) }
      format.xml { head :ok }
    end
  end


private
def authenticate
deny_access unless signed_in?
end

end
