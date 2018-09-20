class Message
  def self.not_found(record='record')
    "Sorry, #{record} not found."
  end

  def self.invalid_credentials
    'Invalid credentials'
  end

  def self.invalid_token
    'Invalid token'
  end

  def self.missing_token
    'Missing token'
  end

  def self.unauthorised
    'Unathorized request'
  end

  def self.account_created
    'Account successfully created'
  end

  def self.account_not_created
    'Account could not be created'
  end

end
