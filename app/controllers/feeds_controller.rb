class FeedsController < ApplicationController
before_filter :authenticate, :only => [:create, :destroy]
def create
@feed = current_user.feeds.build(params[:feed])
if @feed.save
flash[:success] = "Feed created!"
redirect_to root_path
else
redirect_to profile_path
end
end
def destroy
end
end
