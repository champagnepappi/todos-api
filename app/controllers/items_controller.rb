class ItemsController < ApplicationController

  private
  def item_params
    params.permit(:name, :done)
  end
end
