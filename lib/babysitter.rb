class Babysitter
  attr_reader :start_time, :end_time, :client

  def initialize(start_time, end_time, client) 
    @start_time, @end_time = start_time, end_time
    @client = client
  end
end