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
end