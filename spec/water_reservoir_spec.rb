require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
    it 'can be initialized with default values' do
    reservoir = WaterReservoir.new
    expect(reservoir).to be_an_instance_of(WaterReservoir)
    expect(reservoir.capacity).to eq(10)
    expect(reservoir.current_water_volume).to eq(0)
  end

  it 'can check if it is empty' do
    reservoirOne = WaterReservoir.new
    reservoirTwo = WaterReservoir.new(10, 5)

    expect(reservoirOne.empty?).to be_truthy
    expect(reservoirTwo.empty?).to be_falsey
  end

  it 'can be filled' do 
    reservoir = WaterReservoir.new
    expect(reservoir.fill).to eq(10)
  end
end
