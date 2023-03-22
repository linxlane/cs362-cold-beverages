require_relative '../lib/freezer'

describe 'A freezer' do
  it 'can be initialized' do
    freezer = Freezer.new

    expect(freezer).to be_a_kind_of(Freezer)
    expect(freezer.capacity).to eq(100)
    expect(freezer.temperature).to eq(70)
  end

  it 'can be turned on' do
    freezer = Freezer.new
    expect(freezer.turn_on).to eq(:on)
  end

  it 'can be turned off' do
    freezer = Freezer.new
    expect(freezer.turn_off).to eq(:off)
  end

  it 'can have contents added' do
    freezer = Freezer.new
    expect(freezer.add("drink").length).to eq(1)
  end
end
