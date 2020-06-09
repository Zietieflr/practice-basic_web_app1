class BooksController < ApplicationController
  def index
    books = Book.all 
    render json: books, include: [:characters]
  end 

  def show
    book =  Book.find(params[:id])
    render json: book, include: [:characters] 
  end
end
