# frozen_string_literal: true

class WheelReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheel(data)
  end

  def diameters
    wheels.collect do |wheel|
      wheel.rim + (wheel.tyre * 2)
    end
  end

  Wheel = Struct.new(:rim, :tyre)
  def wheel(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end
end
