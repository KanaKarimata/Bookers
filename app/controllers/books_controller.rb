class BooksController < ApplicationController
  def new
  end

  def index
    @books = Book.new
    @books1 = Book.all
    
    
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/'
    
  end

  def show
    @book = Book.find(params[])
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
