class ItemsController < ApplicationController

  #GET /todos/:todo_id/items
  def index
    json_response(@todo.items)
  end

  private
  def item_params
    params.permit(:name, :done)
  end

  def set_todo
    @todo = Todo.find(params[:todo_id])
  end

  def set_todo_item
    @item = @todo.items.find_by!(id: params[:id]) if @todo
  end
end
