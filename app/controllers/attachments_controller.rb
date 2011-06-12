class AttachmentsController < ApplicationController

def new
 @attachment=Attachment.new
end    
def me 
a = Attachment.find(params[:id])
send_data   a.data, :filename => a.filename, :type => a.content_type
    end

def show
        #@attachment = Attachment.find(params[:id])
       #send_data  @attachment.id, @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
    end

    def create      
        return if params[:attachment].blank?

        @attachment = Attachment.new
        @attachment.course=params[:attachment][:course]
        @attachment.uploaded_file = params[:a]

        if @attachment.save
            flash[:notice] = "Thank you for your submission..."
            redirect_to :action => "show"
        else
            flash[:error] = "There was a problem submitting your attachment."
            render :action => :new
        end
    end
end

