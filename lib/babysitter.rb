class Babysitter
  attr_reader :start_time, :end_time

  def initialize(start_time, end_time) 
    @start_time, @end_time = start_time, end_time
  end
end