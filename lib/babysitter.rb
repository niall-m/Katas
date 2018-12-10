require 'job' 

class Babysitter
  attr_reader :start_time, :end_time, :client, :rates

  def initialize(start_time, end_time, client) 
    Job.valid_hours?(start_time, end_time) && Job.valid_client?(client)
    
    @start_time, @end_time = start_time, end_time
    @client, @rates = Job.clients.find { |family, values| family == client }
  end

  def billable_hours
    start_idx = Job.hours.index(start_time)
    end_idx = Job.hours.index(end_time)

    (start_idx...end_idx)
  end
  
  def payment
    total = 0

    billable_hours.each do |hour_idx|
      hour = Job.hours[hour_idx]
      pay_rate = @rates.select { |rate, hours| hours.include?(hour) }.keys.first
      total += pay_rate
    end

    total
  end
end