class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  private
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end
