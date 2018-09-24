class AuthenticationController < ApplicationController
  private
  def auth_params
    params.permit(:email, :password)
  end
end
