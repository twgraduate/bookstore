class BooksController < ApplicationController

  def index
    response = RestClient.get 'http://localhost:4000/books'
    @books = JSON.parse(response.body)
  end

  def show
    response = RestClient.get "http://localhost:4000/books/#{params[:isbn]}"
    @book = JSON.parse(response.body)
  end

  def search_by_name
    response = RestClient.get 'http://localhost:4000/books'
    @books_list = JSON.parse(response.body)
    @books = @books_list.select do |book|
      book['name'].include? params[:name]
    end
  end
end
