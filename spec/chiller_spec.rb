require_relative '../lib/chiller'

describe 'A chiller' do
  it 'can be initialized' do
    chiller = Chiller.new

    expect(chiller).to be_a_kind_of(Chiller)
    expect(chiller.capacity).to eq(100)
    expect(chiller.temperature).to eq(70)
  end

  it 'can be turned on' do
    chiller = Chiller.new
    expect(chiller.turn_on).to eq(:on)
  end

  it 'can be turned off' do
    chiller = Chiller.new
    expect(chiller.turn_off).to eq(:off)
  end

  it 'can have contents added' do
    chiller = Chiller.new
    itemOne = Item.new('thingOne', 5)
    expect(chiller.add(itemOne).length).to eq(1)
  end

  it 'can calculate remaining capacity' do
    chiller = Chiller.new
    itemOne = Item.new('thingOne', 5)
    chiller.add(itemOne)
    expect(chiller.remaining_capacity).to eq(95)
  end

  it 'can set the level' do
    chiller = Chiller.new
    chiller.set_level(4)
    expect(chiller.temperature).to equal(50)
  end
end
