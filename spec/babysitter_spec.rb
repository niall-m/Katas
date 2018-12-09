require 'babysitter'

describe Babysitter do 
  context '#initialize' do 
    it 'has a start time' do 
      expect(Babysitter.new(17, 23).start_time).to eq(17)
    end

    it 'has an end time' do 
      expect(Babysitter.new(20, 04).end_time).to eq(04)
    end
  end
end