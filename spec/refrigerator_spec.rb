require_relative '../lib/refrigerator'

describe 'A refrigerator' do
  it 'can be initialized' do
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)
    
    expect(fridge).to be_a_kind_of(Refrigerator)
  end

  it 'can chill items' do
    item = Item.new('drink', 10)
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)

    fridge.chill(item)
    expect(chiller.remaining_capacity).to eq(90)
  end

  it 'can freeze items' do
    item = Item.new('popsicle', 5)
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)

    fridge.freeze(item)
    expect(freezer.remaining_capacity).to eq(95)
  end

  it 'has a total capacity' do
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)
    expect(fridge.total_capacity).to eq(200)
  end

  it 'has a remaining capacity' do
    itemOne = Item.new('ice cream', 15)
    itemTwo = Item.new('eggs', 12)
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)
    chiller.add(itemTwo)
    freezer.add(itemOne)

    expect(fridge.remaining_capacity).to eq(173)
  end

  it 'can be plugged in' do
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)

    expect(fridge.plug_in).to eq(:on)
  end

  it 'can be unplugged' do
    chiller = Chiller.new
    freezer = Freezer.new
    waterReservoir = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservoir)
    fridge = Refrigerator.new(chiller, freezer, waterDispenser, waterReservoir)

    expect(fridge.unplug).to eq(:off)
  end
end
