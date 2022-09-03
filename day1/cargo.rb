class Cargo

  attr_accessor :fuel, :mass

  def initialize(mass)
    @mass = mass
  end

  def fuel_required
    (mass / 3).ceil - 2
  end

  def fuel_required_part_two(mass)
    total = (mass / 3).ceil - 2
    total += fuel_required_part_two(total) if total.positive? && fuel_required_part_two(total).positive?

    total
  end

end
