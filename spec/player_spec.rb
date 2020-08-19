require 'player'

describe Player do
    subject(:yaz) {Player.new('Yaz') }
    describe '#name' do
        it 'returns the name' do
            expect(yaz.name).to eq 'Yaz'
        end
    end
end