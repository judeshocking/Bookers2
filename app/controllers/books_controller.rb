class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def show
  end

  def update
  end

  private

    def book_params
      params.permit(:title,:body)
    end

    def user_params
      params.require(:user).permit(:name,:profile_image,:introduction)
    end

end
