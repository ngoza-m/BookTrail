class BooksController < ApplicationController
  skip_before_action :authenticate_user!, only: :book_show
  def new
    @book_read = Book.new
  end

  def create
    @book_read = Book.new(book_params)
    @book_read.user = current_user
    if @book_read.save
      redirect_to book_show_path(params[:id]), notice: "Book was added."
    else
      # render :book_show, status: :unprocessable_entity
      flash.alert = "Book not saved"
    end
  end

  def search
    @query = params[:query]
    url = "https://www.googleapis.com/books/v1/volumes?q=#{@query}"
    user_serialized = URI.parse(url).read
    @results = JSON.parse(user_serialized)
    @book_results = @results["items"]
  end

  def book_show
    @book_url = "https://www.googleapis.com/books/v1/volumes/#{params[:format]}"
    user_serialized = URI.parse(@book_url).read
    @book = JSON.parse(user_serialized)
    @img_id = params[:format]
    @img_url = "https://books.google.com/books/publisher/content/images/frontcover/#{@img_id}?fife=w240-h345"
  end

  def destroy
    @book_to_delete = Book.where(book_id: params[:id])
    @book_to_delete.destroy_all
    redirect_to book_show_path(params[:id])
  end

  def update
    @book_to_edit = Book.where(book_id: params[:id])
    @book_to_edit.update(status: "Read")
    redirect_to book_show_path(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :pages, :img_url, :date_finished, :book_id, :status)
  end
end
