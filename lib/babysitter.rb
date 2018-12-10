require 'job' 

class Babysitter
  attr_reader :start_time, :end_time, :client

  def initialize(start_time, end_time, client) 
    unless Job.clients.include?(client) &&
      Job.hours.include?(start_time) && Job.hours.include?(end_time)
        raise ArgumentError, 
        "invalid start_time (#{start_time}), end_time (#{end_time}), or client (#{client})"
    end
    
    @start_time, @end_time = start_time, end_time
    @client = Job.clients.select { |key, value| key == client }.keys[0]
  end
end