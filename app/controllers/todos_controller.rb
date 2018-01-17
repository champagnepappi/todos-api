class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :update, :destroy]

  #GET /TODOS

  def index
    @todos = Todo.all
    json_response(@todos)
  end

end
