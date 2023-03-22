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
    itemOne = Item.new('thingOne', 5)
    expect(freezer.add(itemOne).length).to eq(1)
  end

  it 'can calculate remaining capacity' do
    freezer = Freezer.new
    itemOne = Item.new('thingOne', 5)
    freezer.add(itemOne)
    expect(freezer.remaining_capacity).to eq(95)
  end
end
