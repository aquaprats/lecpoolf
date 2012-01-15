class PagesController < ApplicationController
 


 def home
@title="Home"
render :layout => "lay"
  end
def about
@title="About"
end
  def contact
@title="Contact"  
end
def help
@title="Help"
end
def developers
@title="Developers"  
end
end
