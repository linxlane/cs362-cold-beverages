require_relative '../lib/freezer'

describe 'A freezer' do
  it 'can be initialized' do
    freezer = Freezer.new

    expect(freezer).to be_a_kind_of(Freezer)
    expect(freezer.capacity).to eq(100)
    expect(freezer.temperature).to eq(70)
  end
end
