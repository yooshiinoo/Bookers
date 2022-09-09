class BooksController < ApplicationController
  def new

  end

  def create
    book = Book.new(books_params)
    book.save
    redirect_to '/'
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  def books_params
    params.require(:book).permit(:title, :body)
  end
end
