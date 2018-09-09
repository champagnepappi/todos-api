class ItemsController < ApplicationController

  private
  def item_params
    params.permit(:name, :done)
  end

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end
end
