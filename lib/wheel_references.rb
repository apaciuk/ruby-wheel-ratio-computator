# frozen_string_literal: true

require 'pp'

class WheelReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect do |wheel|
      wheel.rim + (wheel.tyre * 2)
    end
  end

  Wheel = Struct.new(:rim, :tyre)
  def wheelify(data)
    data.collect { |cell| Wheel.new(cell[0], cell[1]) }
  end
end
