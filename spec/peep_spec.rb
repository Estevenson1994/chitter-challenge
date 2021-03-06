require 'peeps'
require 'database_helpers'
require 'timecop'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peep.all
      expect(peeps.length).to eq 2
      expect(peeps.first).to be_a Peep
      expect(peeps.first.peep).to eq "HELLO"
    end
  end
  describe '.add' do 
    it 'adds a peep' do
      Timecop.freeze do
        peep = Peep.add(peep: "Third peep", username: "user" )
        persisted_data = persisted_data(table: :peeps, id: peep.id)
        expect(peep).to be_a Peep
        expect(peep.id).to eq persisted_data['id']
        expect(peep.peep).to eq "Third peep"
        expect(peep.date).to eq DateTime.now.strftime("%d/%m/%Y")
        expect(peep.time).to eq DateTime.now.strftime("%I:%M%p")
      end
    end
  end
end
