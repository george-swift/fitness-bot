require_relative '../lib/calculator'
require_relative '../lib/wellness'

describe WellnessTips do
  describe '#upper_body' do
    it 'ensures the prompt does not return numbers' do
      tips = WellnessTips.new
      expect(tips.toning.class).not_to eq(Integer)
    end
  end
end

describe BMICalculator do
  describe '#bmi' do
    it "calculates a user's BMI off the height and weight entered" do
      calc = BMICalculator.new
      expect(calc.bmi.class).to eq(Integer)
    end

    it "ensures a user's BMI is always a number" do
      calc = BMICalculator.new
      expect(calc.bmi.class).not_to be_a(String)
    end
  end

  describe '#check_bmi' do
    it "determines the fitness range off a user's calculated bmi" do
      calc = BMICalculator.new
      expect(calc.check_bmi.class).to eq(String)
    end

    it "ensures the fitness of a user's calculated bmi is a string" do
      calc = BMICalculator.new
      expect(calc.check_bmi.class).not_to eq(Integer)
    end
  end
end