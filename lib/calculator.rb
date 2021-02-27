# :nodoc:
class BMICalculator
  $find_bmi = []

  def body_mass_index
    height = $find_bmi[0]
    weight = $find_bmi[1]
    weight / (height**2)
  end

  def check_bmi
    healthy_range = 18.5..24.9
    overweight_range = 25..29.9
    obese_range = 30..39.9
    if healthy_range.include? body_mass_index
      'the healthy weight range'
    elsif overweight_range.include? body_mass_index
      'the overweight range'
    elsif obese_range.include? body_mass_index
      'the obese range'
    else
      'the underweight range'
    end
  end
end
