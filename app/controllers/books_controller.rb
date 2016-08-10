class BooksController < ApplicationController

  def index
    response = RestClient.get 'http://localhost:4000/books'
    @books = JSON.parse(response.body)
  end

  def show
    response = RestClient.get "http://localhost:4000/books/#{params[:isbn]}"
    @book = JSON.parse(response.body)
  end
end

