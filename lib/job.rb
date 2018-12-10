class Job
  HOURS = [17, 18, 19, 20, 21, 22, 23, 00, 01, 02, 03, 04]

  CLIENTS = {
    client_A: {
      15 => [17, 18, 19, 20, 21, 22],
      20 => [23, 00, 01, 02, 03, 04]
    },
    client_B: {
      12 => [17, 18, 19, 20, 21],
      8 => [22, 23, 00], 
      16 => [01, 02, 03, 04]
    },
    client_C: {
      21 => [17, 18, 19, 20],
      15 => [21, 22, 23, 00, 01, 02, 03, 04]
    }
  }

  def self.hours
    HOURS
  end

  def self.clients 
    CLIENTS
  end
  
  def self.valid_hours?(start_time, end_time)
    if !(HOURS.include?(start_time))
      raise ArgumentError, "Invalid start time (#{start_time})."
    elsif !(HOURS.include?(end_time) )
      raise ArgumentError, "Invalid end time (#{end_time})."
    elsif HOURS.index(start_time) >= HOURS.index(end_time)
      raise ArgumentError, "End time (#{end_time}) before start time (#{start_time})."
    end
    true
  end

  def self.valid_client?(client)
    raise ArgumentError, "Invalid client (#{client})." unless CLIENTS.include?(client) 
    true
  end
end