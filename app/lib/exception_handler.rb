module ExceptionHandler
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
  end
end
