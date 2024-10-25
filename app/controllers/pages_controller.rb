class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  require "json"
  require "open-uri"

  def home
  end

  # def search
  #   @query = params[:query]
  #   url = "https://www.googleapis.com/books/v1/volumes?q=#{@query}"
  #   user_serialized = URI.parse(url).read
  #   @results = JSON.parse(user_serialized)
  #   @book_results = @results["items"]
  # end

  # def book_show
  #   @book_url = "https://www.googleapis.com/books/v1/volumes/#{params[:format]}"
  #   user_serialized = URI.parse(@book_url).read
  #   @book = JSON.parse(user_serialized)
  #   @img_id = params[:format]
  #   @img_url = "https://books.google.com/books/publisher/content/images/frontcover/#{@img_id}?fife=w240-h345"
  # end
end
