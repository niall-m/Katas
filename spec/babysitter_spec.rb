require 'babysitter'

describe Babysitter do 
  def babysitter(params = {})
    defaults = {
      start_time: 17, 
      end_time: 04, 
      client: :client_A
    }
    Babysitter.new(*defaults.merge(params).values)
  end
  
  context '#initialize' do 
    it 'has a start time' do 
      expect(babysitter.start_time).to eq(17)
    end

    it 'has an end time' do 
      expect(babysitter.end_time).to eq(04)
    end

    it 'has a client' do 
      expect(babysitter.client).to eq(:client_A)
    end

    it 'has a rates hash' do 
      expect(babysitter.rates.keys).to contain_exactly(15, 20)
      expect(babysitter(client: :client_B).rates.keys).to contain_exactly(12, 8, 16)
      expect(babysitter(client: :client_C).rates.keys).to contain_exactly(21, 15)
    end

    it 'creates a class instance with valid input arguments' do 
      expect( babysitter(start_time: 22, end_time: 02, client: :client_C) ).to be_truthy
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

  describe 'calculations' do 
    context '#billable_hours' do 
      it 'returns a range of hours worked by index position' do 
        expect(babysitter.billable_hours).to cover(0, 10)
        expect(babysitter(start_time: 23).billable_hours).to_not cover(0, 5)
      end
    end
    
    context '#payment' do 
      it 'adds hourly rate and returns total sum' do 
        allow(babysitter).to receive(:payment)
        expect(babysitter.payment).to eq(190) 
        expect(babysitter(end_time: 18).payment).to eq(15) 
      end

      it 'differentiates between clients' do 
        expect(babysitter(client: :client_B).payment).to eq(132) 
        expect(babysitter(client: :client_C).payment).to eq(189) 
      end
    end
  end
end