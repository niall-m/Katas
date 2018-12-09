require 'babysitter'

describe Babysitter do 
  context '#initialize' do 
    it 'has a start time' do 
      expect(Babysitter.new(17, 23, "fam_A").start_time).to eq(17)
    end

    it 'has an end time' do 
      expect(Babysitter.new(20, 04, "fam_A").end_time).to eq(04)
    end

    it 'has a client' do 
      expect(Babysitter.new(20, 04, "fam_A").client).to eq("fam_A")
    end
  end
end