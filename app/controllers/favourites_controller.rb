class FavouritesController < ApplicationController
before_filter :authenticate

def fa
@favourite=Favourite.new
@favourite.user_id=current_user.id
@favourite.category="Attachment"
@attachment=Attachment.find(params[:id])
@favourite.attachment_id=@attachment.id
if @favourite.save
flash[:success]="Successfully added"
end
redirect_to(:back)
end

def fv
@favourite=Favourite.new
@favourite.user_id=current_user.id
@favourite.category="Video"
@video=Video.find(params[:id])
@favourite.video_id=@video.id
if @favourite.save
flash[:success]="Successfully added"
end
redirect_to(:back)
end



def fva
end


def fvaa
end


def fvl
end


def fvq
end


def fve
end


def fvvv
end


def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    flash[:success]="Removed from Favourites"
    
      redirect_to(:back) 
          
  end

private
def authenticate
deny_access unless signed_in?
end

end


