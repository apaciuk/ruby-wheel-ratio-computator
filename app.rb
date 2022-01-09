# frozen_string_literal: true

require 'pp'
require './lib/wheel_references'
require './lib/wheel'
require './lib/gear'

@wheel = Wheel.new(26, 1.5)
rim = @wheel.diameter
puts rim
tyre = @wheel.circumference
puts tyre

puts Gear.new(52, 11, rim, tyre).ratio
puts Gear.new(52, 11, rim, tyre).gear_inches
