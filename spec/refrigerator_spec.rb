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
end
