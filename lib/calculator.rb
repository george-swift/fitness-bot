# rubocop: disable Style/GlobalVars
# :nodoc:
class BMICalculator
  $bmi_data = []

  def bmi
    if $bmi_data.size.positive?
      height = $bmi_data[0]
      weight = $bmi_data[1]
      weight / height**2
    else
      0
    end
  end

  def check_bmi
    case bmi
    when 18.5..24.9
      'the healthy weight range'
    when 25..29.9
      'the overweight range'
    when 30..39.9
      'the obese range'
    else
      'the underweight range'
    end
  end
end
# rubocop: enable Style/GlobalVars
