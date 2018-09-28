class UsersController < ApplicationController
  private
  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
