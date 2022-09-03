require_relative 'rocket.rb'
require 'pry'
require_relative 'cargo'

class PayloadCalculator

  attr_reader :modules

  def initialize(modules=nil)
    file_path = File.expand_path('input.txt', __dir__)
    input = File.read(file_path).split("\n").map(&:to_i)
    @modules = modules.nil? ? input : modules
  end

  def total_fuel
    modules.sum { |m| Cargo.new(m).fuel_required}
  end

  def total_fuel_part_two
    modules.sum { |m| Cargo.new(m).fuel_required_part_two(m) }
  end
end
