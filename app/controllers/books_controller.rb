class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  # def new
  #   @book = Book.new
  # end

  def create
    book = Book.new(book_params)
    if book.save
      redirect_to book_path(book.id), notice: 'Book was successfully created.'
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
    redirect_to book_path(book.id), notice: 'Book was successfully updated.'
    end
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
    redirect_to '/books', notice: 'Book was successfully destroyed.'
    end
  end

  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
