require 'rails_helper'

RSpec.describe 'Todos API', type: :request do
  #initialize test data
  let!(:todo) {create_list(:todo, 10)}
  let(:todo_id) {todos.first.id}

  #Test suite for GET /todos
  describe 'GET /todos' do
    before { get '/todos' }
  end
end
