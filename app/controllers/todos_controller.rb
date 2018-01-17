class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  #GET /TODOS

  def index
    @todos = Todo.all
    json_response(@todos)
  end

  #POST /todos
  def create
    @todo = Todo.create!(todo_params)
    json_response(@todo, :created)
  end

  #GET /todos/:id
  def show
    json_response(@todo)
  end

end
