require 'babysitter'

describe Babysitter do 
  context '#initialize' do 
    it 'has a start time' do 
      expect(Babysitter.new(17).start_time).to eq(17)
    end
  end
end