require_relative '../lib/water_reservoir'

describe 'A water reservoir' do
 it 'can be initialized with default values' do
  reservoir = WaterReservoir.new
  expect(reservoir).to be_an_instance_of(WaterReservoir)
  expect(reservoir.capacity).to eq(10)
  expect(reservoir.current_water_volume).to eq(0)
 end
end
