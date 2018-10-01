class ApiVersion
  attr_reader :version, :default

  def initialize(version, default = false)
    @version = version
    @default = default
  end

  private
  def check_headers(headers)
    #check version for accept headers
    #except custom media type todos
    accept = headers[:accept]
    accept && accept.include?("application/vnd.todos.#{version}+json")
  end
end
