require '../day1/rocket_equation'

RSpec.describe 'rocker_equation' do
  context 'should calculate the fuel required given a mass' do

    it 'should return 2 for a mass of 12 ' do
      expect(PayloadCalculator.new([12]).total_fuel).to eq(2)
    end

    it 'should return 2 for a mass of 4 ' do
      expect(PayloadCalculator.new([14]).total_fuel).to eq(2)
    end

    it 'should return 654 for a mass of 1969 ' do
      expect(PayloadCalculator.new([1969]).total_fuel).to eq(654)
    end

    it 'should return 33583 for a mass of 100_756 ' do
      expect(PayloadCalculator.new([100_756]).total_fuel).to eq(33_583)
    end

    it 'should return 13336439 for the input text ' do
      expect(PayloadCalculator.new.total_fuel).to eq(3_336_439)
    end
  end

  context 'part two' do
    it 'should return 142 for a mass of 14 ' do
      expect(PayloadCalculator.new([14]).total_fuel_part_two).to eq(2)
    end

    it 'should return 966 for a mass of 1969 ' do
      expect(PayloadCalculator.new([1969]).total_fuel_part_two).to eq(966)
    end

    it 'should return 5001791 for the input ' do
      expect(PayloadCalculator.new().total_fuel_part_two).to eq(5001791)
    end
  end

end