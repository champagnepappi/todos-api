module ExceptionHandler
  extend ActiveSupport::Concern
  class AuthenticationError < StandardError 
  end
  class MissingToken < StandardError
  end
  class InvalidToken < StandardError
  end
end
