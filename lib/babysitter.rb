require 'job' 

class Babysitter
  attr_reader :start_time, :end_time, :client, :rates

  def initialize(start_time, end_time, client) 
    Job.valid_hours?(start_time, end_time) && Job.valid_client?(client)
    
    @start_time, @end_time = start_time, end_time
    @client, @rates = Job.clients.find { |family, values| family == client }
  end
end