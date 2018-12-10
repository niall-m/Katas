require 'babysitter'

describe Babysitter do 
  def babysitter(params = {})
    defaults = {
      start_time: 17, 
      end_time: 23, 
      client: :client_A
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
      expect(babysitter.client).to eq(:client_A)
    end

    it 'creates a class instance with valid input arguments' do 
      expect(babysitter).to be_truthy
    end

    context 'validations' do 
      it 'detects invalid initialization arguments' do 
        expect { babysitter(client: :client_D) }.to raise_error(ArgumentError)
        
        expect { babysitter(start_time: 16) }.to raise_error(ArgumentError)
        
        expect { babysitter(end_time: 05) }.to raise_error(ArgumentError)
      end

      it 'includes invalid arguments in the error message' do 
        expect { babysitter(client: :client_D) }.to raise_error("Invalid client (client_D).")
        
        expect { babysitter(start_time: 16) }.to raise_error("Invalid start time (16).")
        
        expect { babysitter(end_time: 10) }.to raise_error("Invalid end time (10).")
      end

      it 'validates proper start and end times' do 
        expect { babysitter(start_time: 20, end_time: 18) }.to raise_error(
          "End time (18) before start time (20)."
        )
      end
    end    
  end
end