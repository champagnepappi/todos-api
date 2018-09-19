module ExceptionHandler
  #provides the more graceful 'included' method
  extend ActiveSupport::Concern

  class AuthenticationError < StandardError 
  end
  class MissingToken < StandardError
  end
  class InvalidToken < StandardError
  end

  included do
    rescue_from ActiveRecord::RecordInvalid, with: :fourty_twenty_two 
    rescue_from ExceptionHandler::AuthenticationError, with: :unauthorised_request
    rescue_from ExceptionHandler::MissingToken, with: :fourty_twenty_two
    rescue_from ExceptionHandler::InvalidToken, with: :fourty_twenty_two

    rescue_from ActiveRecord::RecordNotFound do |e|
      json_response({message: e.message}, :not_found)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      json_response({message: e.message}, :unprocessable_entity)
    end
  end

  private
  #JSON response with message; Status code 422 - unprocessable entity
  def four_twenty_two(e)
    json_response({message: e.message}, :unprocessable_entity)
  end

  #json response with message; status code 401 - unauthorised
  def unauthorised_request(e)
    json_response({message: e.message}, :unathorised)
  end
end
