class BooksController < ApplicationController

def new
@title="Books Share|Buy"
@book = Book.new



end


def create
@book = Book.new(params[:book])
@book.user_id=current_user.id
respond_to do |format|
if @book.save
format.html { redirect_to(current_user, :notice => 'Book was successfully uploaded.') }
format.xml { render :xml => @book, :status => :created, :location => @book }
else
format.html { render :action => "new" }
format.xml { render :xml => @book.errors, :status => :unprocessable_entity }
end
end
end


def destroy
@book = Book.find(params[:id])
@book.destroy

respond_to do |format|
format.html { redirect_to(books_url) }
format.xml { head :ok }
end
end
end
