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
  end
end
