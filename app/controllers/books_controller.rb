class BooksController < ApplicationController

  def index
    @books = RestClient.get 'http://localhost:4000/books'
    @books = @books.body
    @books = JSON.parse(@books)
  end

  def show
    @book = RestClient.get "http://localhost:4000/books/#{params[:isbn]}"
    @book = @book.body
    @book = JSON.parse(@book)
  end

end

