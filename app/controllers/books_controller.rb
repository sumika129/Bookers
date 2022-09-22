class BooksController < ApplicationController
  def new
    
  end
  
  def crreate
    books = Books.new(books_params)
    books.save
    redirect_to '/books'
  end  

  def index
    @books = Books.index
  end

  def show
  end

  def edit
  end
  
  private
  def books_params
    params.require(:books).permit(:title, :body)
  end  
end
