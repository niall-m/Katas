class Job
  CLIENTS = {
    "client_A" => {
      15 => %w(17 18 19 20 21 22),
      20 => %w(23 00 01 02 03 04)
    }
  }

  def self.clients 
    CLIENTS
  end
end