class HomesController < ApplicationController
  def top
  end
  
  def index
    @book = Book.new
  end
  
  def create
    book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@list.id)
    else
      
    end
  
  def show
    
  end
  
  def edit
  end
  
  private
  def book_params
    params. require(:book).permit(:title, :body)
  end
  
end
