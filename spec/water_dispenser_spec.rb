require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
it 'can be initialized' do
    waterReservior = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservior)
    expect(waterDispenser).to respond_to(:reservoir)
  end
end
