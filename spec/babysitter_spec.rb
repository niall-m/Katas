require 'babysitter'

describe Babysitter do 
  def babysitter(params = {})
    defaults = {
      start_time: 17, 
      end_time: 23, 
      client: "client_A"
    }
    Babysitter.new(*defaults.merge(params).values)
  end
  
  context '#initialize' do 
    it 'has a start time' do 
      expect(babysitter.start_time).to eq(17)
    end

    it 'has an end time' do 
      expect(babysitter.end_time).to eq(23)
    end

    it 'has a client' do 
      expect(babysitter.client).to eq("client_A")
    end

    it 'creates a class instance with valid input arguments' do 
      expect(babysitter).to be_truthy
    end

    context 'validations' do 
      it 'detects invalid initialization arguments' do 
        expect { babysitter(client: "fam_D") }.to raise_error(ArgumentError)
      end

      it 'includes invalid arguments in the error message' do 
        expect { babysitter(client: "fam_D") }.to raise_error(
          "invalid start_time (17), end_time (23), or client (fam_D)"
        )
      end
    end    
  end
end