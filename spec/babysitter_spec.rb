require 'babysitter'

describe Babysitter do 
  def babysitter(params = {})
    defaults = {
      start_time: 17, 
      end_time: 23, 
      client: "fam_A"
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
      expect(babysitter.client).to eq("fam_A")
    end
  end
end