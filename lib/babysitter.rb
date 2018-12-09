require 'job' 

class Babysitter
  attr_reader :start_time, :end_time, :client

  def initialize(start_time, end_time, client) 
    @start_time, @end_time = start_time, end_time
    @client = Job.clients.select { |key, value| key == client }.keys[0]
  end
end