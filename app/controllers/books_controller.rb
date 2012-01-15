class BooksController < ApplicationController

def new
@title="Books Share|Buy"
@book = Book.new
end

def buy
@book=Book.find(params[:id])
#@book.buy=1
@book.bid=current_user.id
@book.upbuy
redirect_to :controller => 'users', :action => 'course1s'
end
def sell
@book=Book.find(params[:id])
@book.bid=current_user.id
#@book.buy=1
@book.upsell
@book.destroy
redirect_to :controller => 'users', :action => 'course1s'
end

def borrow
@book=Book.find(params[:id])
#@book.buy=1
@book.bid=current_user.id
@book.upborrow
@user=current_user
@user.decrement!(:credit)
redirect_to :controller => 'users', :action => 'course1s'
end

def lend
@book=Book.find(params[:id])
#@book.buy=1
@book.uplend
@user=current_user
@user.increment!(:credit)
#@user1= find_by_id(@book.bid)
#@user.decrement!(:credit)
#@user.credit=@user.credit-1
@book.destroy
redirect_to :controller => 'users', :action => 'course1s'
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
