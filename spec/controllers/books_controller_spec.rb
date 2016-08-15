require 'rails_helper'

describe BooksController do

  describe 'get#index' do

    it 'returns the book list when service is ok' do
      book_index = {:bookIndex => 'bookIndex'}
      book_info = double
      allow(RestClient).to receive(:get).and_return(book_info)
      allow(book_info).to receive(:body)
      allow(JSON).to receive(:parse).and_return(book_index)
      get :index
      expect(response.status).to eq 200
      expect(response).to render_template('index')
      expect(assigns(:books)).to eq({:bookIndex => 'bookIndex'})
    end
  end
end