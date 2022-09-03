module Rocket
  def initialize(cargo)
    @cargo = Cargo.new(cargo)
    @payload = []
  end

  def add_to_payload(mass)
    payload << mass
  end

  def total_fuel
    cargo.fuel_required
  end
end
