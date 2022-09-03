require '../day1/rocket_equation'

RSpec.describe 'rocker_equation' do
  context 'should calculate the fuel required given a mass' do

    it 'should return 12 for a mass of 2 ' do
      expect(PayloadCalculator.new([12]).total_fuel).to eq(2)
    end

    it 'should return 14 for a mass of 2 ' do
      expect(PayloadCalculator.new([14]).total_fuel).to eq(2)
    end

    it 'should return 1969 for a mass of 654 ' do
      expect(PayloadCalculator.new([1969]).total_fuel).to eq(654)
    end

    it 'should return 100756 for a mass of 33583 ' do
      expect(PayloadCalculator.new([100_756]).total_fuel).to eq(33_583)
    end

    it 'should return 13336439 for the input text ' do
      expect(PayloadCalculator.new.total_fuel).to eq(3_336_439)
    end
  end

end