class WaterDispenser

  attr_reader :reservoir

  def initialize(reservoir)
    @reservoir = reservoir
  end

  def fill(vessel)
    vessel.fill()
    dispense(vessel)
  end

  def dispense(vessel)
    reservoir.drain(vessel.volume)
  end

end
