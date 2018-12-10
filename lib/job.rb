class Job
  HOURS = [17, 18, 19, 20, 21, 22, 23, 00, 01, 02, 03, 04]

  CLIENTS = {
    "client_A" => {
      15 => %w(17 18 19 20 21 22),
      20 => %w(23 00 01 02 03 04)
    }
  }

  def self.hours
    HOURS
  end

  def self.clients 
    CLIENTS
  end
end