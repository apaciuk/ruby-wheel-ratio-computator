# frozen_string_literal: true

# require_relative './card'

# a gear ratio app

class Gear
  attr_reader :gearing, :cog, :rim, :tyre

  def initialize(gearing, cog, rim, tyre)
    @gearing = gearing
    @cog = cog
    @rim = rim
    @tyre = tyre
  end

  def ratio
    gearing / cog.to_f
  end

  def gear_inches
    # tyre goes around rim twice for diameter
    ratio * (rim + (tyre * 2))
  end
end
