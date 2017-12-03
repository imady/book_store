class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @categories = Category.all
  end

  def show
    @book = Book.find(params[:id])
    @categories = Category.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path
  end

  def destroy
      @book = Book.find(params[:id])
      @book.destroy
      redirect_to books_path
  end

  
  private
  def book_params
    params.require(:book).permit(:title, :year, :pages, :category_id, :country_id, :author_id, :coverpath)  
  end
end