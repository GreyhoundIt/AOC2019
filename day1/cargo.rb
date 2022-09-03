class Cargo

  attr_reader :mass

  def initialize(mass)
    @mass = mass
  end

  def fuel_required
    (mass / 3).ceil - 2
  end

end
