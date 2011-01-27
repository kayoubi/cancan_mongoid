class BooksController < ApplicationController
  respond_to :html
  
  load_and_authorize_resource
  
  def index
    @books = Book.all
  end
  
  def create
    @book.save
    redirect_to(@book)
  end
end
