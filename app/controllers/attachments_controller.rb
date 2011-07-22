class AttachmentsController < ApplicationController


def view
 @title="View Document"
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
      @attachment.increment!(:vcount)
      redirect_to (:back)
    rescue ActiveRecord::RecordInvalid
       redirect_to (:back)
    end
  end
def vote_down
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
     @attachment.decrement!(:vcount)
       redirect_to (:back)
    rescue ActiveRecord::RecordInvalid
       redirect_to (:back)
    end
  end
def vote_up1
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
        @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1'
    end
  end
def vote_down1
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1'
    end
  end
def vote_up1b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1b'
    end
  end
def vote_down1b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1b'
    end
  end
def vote_up1a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1a'
    end
  end
def vote_down1a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1a'
    end
  end
def vote_up1q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1q'
    end
  end
def vote_down1q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1q'
    end
  end
def vote_up1e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1e'
    end
  end
def vote_down1e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1e'
    end
  end

def vote_up1l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1l'
    end
  end
def vote_down1l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course1l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1l'
    end
  end
def vote_up2
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2'
    end
  end
def vote_down2
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2'
    end
  end
def vote_up1b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course1b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course1b'
    end
  end
def vote_down2b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2b'
    end
  end
def vote_up2a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2a'
    end
  end
def vote_down2a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2a'
    end
  end
def vote_up2q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2q'
    end
  end
def vote_down2q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2q'
    end
  end
def vote_up2e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2e'
    end
  end
def vote_down2e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course2e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2e'
    end
  end

def vote_up2l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course2l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2l'
    end
  end
def vote_down2l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)       
      redirect_to :controller => 'users', :action => 'course2l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course2l'
    end
  end
def vote_up3
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3'
    end
  end
def vote_down3
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3'
    end
  end
def vote_up3b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3b'
    end
  end
def vote_down3b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3b'
    end
  end
def vote_up3a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3a'
    end
  end
def vote_down3a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3a'
    end
  end
def vote_up3q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3q'
    end
  end
def vote_down3q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3q'
    end
  end
def vote_up3e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3e'
    end
  end
def vote_down3e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3e'
    end
  end

def vote_up3l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course3l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3l'
    end
  end
def vote_down3l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course3l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course3l'
    end
  end

def vote_up4
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4'
    end
  end
def vote_down4
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4'
    end
  end
def vote_up4b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4b'
    end
  end
def vote_down4b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4b'
    end
  end
def vote_up4a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4a'
    end
  end
def vote_down4a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4a'
    end
  end
def vote_up4q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4q'
    end
  end
def vote_down4q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4q'
    end
  end
def vote_up4e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4e'
    end
  end
def vote_down4e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4e'
    end
  end

def vote_up4l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course4l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4l'
    end
  end
def vote_down4l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course4l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course4l'
    end
  end

def vote_up5
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5'
    end
  end
def vote_down5
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5'
    end
  end
def vote_up5b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5b'
    end
  end
def vote_down5b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5b'
    end
  end
def vote_up5a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5a'
    end
  end
def vote_down5a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5a'
    end
  end
def vote_up5q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5q'
    end
  end
def vote_down5q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5q'
    end
  end
def vote_up5e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5e'
    end
  end
def vote_down5e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5e'
    end
  end

def vote_up5l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
        @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course5l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5l'
    end
  end
def vote_down5l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course5l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course5l'
    end
  end

def vote_up6
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6'
    end
  end
def vote_down6
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6'
    end
  end
def vote_up6b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6b'
    end
  end
def vote_down6b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6b'
    end
  end

def vote_up6a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6a'
    end
  end
def vote_down6a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6a'
    end
  end
def vote_up6q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6q'
    end
  end
def vote_down6q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6q'
    end
  end
def vote_up6e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6e'
    end
  end
def vote_down6e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6e'
    end
  end

def vote_up6l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course6l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6l'
    end
  end
def vote_down6l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course6l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course6l'
    end
  end

def vote_up7
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7'
    end
  end
def vote_down7
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course7'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7'
    end
  end
def vote_up7b
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
           @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7b' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7b'
    end
  end
def vote_down7b
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course7b'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7b'
    end
  end
def vote_up7a
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7a' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7a'
    end
  end
def vote_down7a
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)        
      redirect_to :controller => 'users', :action => 'course7a'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7a'
    end
  end
def vote_up7q
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7q' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7q'
    end
  end
def vote_down7q
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)        
      redirect_to :controller => 'users', :action => 'course7q'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7q'
    end
  end
def vote_up7e
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
         @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7e' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7e'
    end
  end
def vote_down7e
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course7e'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7e'
    end
  end

def vote_up7l
    begin
      current_user.vote_for(@attachment = Attachment.find(params[:id]))
          @attachment.increment!(:vcount)
         redirect_to :controller => 'users', :action => 'course7l' 
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7l'
    end
  end
def vote_down7l
    begin
      current_user.vote_against(@attachment = Attachment.find(params[:id]))
       @attachment.decrement!(:vcount)
      redirect_to :controller => 'users', :action => 'course7l'
    rescue ActiveRecord::RecordInvalid
      redirect_to :controller => 'users', :action => 'course7l'
    end
  end

def show
       @title="All Documents"
        #@attachment = Attachment.find(params[:id])
       #send_data  @attachment.id, @attachment.data, :filename => @attachment.filename, :type => @attachment.content_type
    end
   def index
     @title="Search"
    @search = Attachment.search(params[:search])
    @attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
      @attachments = @search.paginate(:page => params[:page])# Who doesn't love will_paginate?
  end
def index2
     @title="Search"
    @search = Attachment.search(params[:search])
    @attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index3
     @title="Search"
    @search = Attachment.search(params[:search])
   @attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index4
     @title="Search"
    @search = Attachment.search(params[:search])
    @attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
     @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index5
     @title="Search"
    @search = Attachment.search(params[:search])
@attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
    @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index6
     @title="Search"
    @search = Attachment.search(params[:search])
@attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate? 
 end
def index7
     @title="Search"
    @search = Attachment.search(params[:search])
@attachments = @search.order("vcount DESC") #load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end
def index8
     @title="Search"
    @search = Attachment.search(params[:search])
    @attachments = @search.order("vcount DESC")   # load all matching records
    # @articles = @search.relation # Retrieve the relation, to lazy-load in view
    # @articles = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
 @attachments = @search.paginate(:page => params[:page]) # Who doesn't love will_paginate?
  end

 def destroy
    @attachment = Attachment.find(params[:id])
    @attachment.destroy
    flash[:success]="Document Deleted"
    respond_to do |format|
      format.html { redirect_to(:back) }
      format.xml { head :ok }
    end
  end
    def create   
        @title="Upload"
   
        return if params[:attachment].blank?
       
       @attachment = Attachment.new
        @attachment.course=params[:attachment][:course]
        @attachment.category=params[:attachment][:category]
        @attachment.uploaded_file = params[:a]
        @attachment.user_id=current_user.id
        @attachment.vcount=0
        if @attachment.save
            flash[:notice] = "Thank you for uploading."
            redirect_to :action => "show"
        else
            flash[:error] = "There was a problem submitting your notes."
            render :action => "create"
        end
    end

private
def authenticate
deny_access unless signed_in?
end
end


