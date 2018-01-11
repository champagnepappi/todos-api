require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  #initialize test data
  let!(:todo) {create_list(:todo, 10)}
  let(:todo_id) {todos.first.id}

  #Test suite for GET /todos
  describe 'GET /todos' do
    before { get '/todos' }

    it 'returns todos' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #Test suite for GET /todos/:id
  describe 'GET /todos/:id' do
    before { get "/todos/#{todo_id}" }

    context 'when the record exists' do
      it 'returns the todo' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(todo_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
