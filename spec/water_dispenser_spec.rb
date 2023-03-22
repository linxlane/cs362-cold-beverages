require_relative '../lib/water_dispenser'

describe 'A water dispenser' do
  it 'can be initialized' do
    waterReservior = WaterReservoir.new
    waterDispenser = WaterDispenser.new(waterReservior)
    expect(waterDispenser).to respond_to(:reservoir)
  end

  it 'can fill vessels' do
    vessel = Vessel.new('cup', 20)
    reservoir = WaterReservoir.new(100, 100)
    dispenser = WaterDispenser.new(reservoir)
    dispenser.fill(vessel)
    
    expect(vessel.empty?).to be_falsey
    expect(reservoir.current_water_volume).to eq(80)
  end

  it 'can dispense' do
    vessel = Vessel.new('cup', 20)
    reservoir = WaterReservoir.new(100, 100)
    dispenser = WaterDispenser.new(reservoir)

    dispenser.dispense(vessel)

    expect(reservoir.current_water_volume).to eq(100-20)
  end
end
