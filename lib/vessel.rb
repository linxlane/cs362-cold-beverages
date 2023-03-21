class Vessel
  attr_reader :name, :volume

  def initialize(name = 'FAKE', volume = 100, contents = [])
    @name = name
    @volume = volume
    @contents = contents
  end

  def empty?
    @contents == []
  end

  def fill
    @contents << 'liquid'
  end
end
