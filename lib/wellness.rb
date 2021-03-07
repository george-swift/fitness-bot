# :nodoc:
class WellnessTips
  attr_reader :upper_body, :lower_body, :tips_for_toning, :tips_for_weight_loss

@@upper_body = %(
    Try to incorporate these in your next 💪🏽 work-out session
    - Overhead Presses
    - Pull-ups
    - Seated Cable Rows
    - Dumbbell Bench Presses
    - Dumbbell Bicep Curls
    - Side Planks
    - Pushups
  )

  @@lower_body = %(
    Try to incorporate these in your next 🦵🏽 work-out session
    - Squats
    - Glutes Bridge
    - Jumping Lunges
    - Hip Lifts 
    - Leg Press
    - Romanian Deadlift
    - Dumbbell Stepup
  )

  @@tips_for_toning = %(
    Try to include these in your dietary plan for desired results:
    - Eat eggs 🥚, yolk 🍳 and all
    - Eat fatty fish 🐟 They are a great source of high-quality protein and healthy fat
    - Don’t smoke or do drugs, and only drink in moderation 🥃 🕰
    - Lifting weights 🏋🏽 can strengthen your muscles and improve your body composition.
  )

  @@tips_for_weight_loss = %(
    Try to include these in your dietary plan for desired results:
    - Don’t drink sugar calories 🥤
    - Eat nuts 🥜 They can help you lose weight and may help fight type 2 diabetes and heart disease
    - Avoid processed junk food 🥤❌
    - Do some cardio to reduce belly fat 🏃🏽
    - Get enough sleep 🛌 😴 Poor sleep is a strong individual risk factors for weight gain and obesity
  )

  def upper_body
    @@upper_body
  end

  def lower_body
    @@lower_body
  end

  def toning
    @@tips_for_toning
  end

  def weight_loss
    @@tips_for_weight_loss
  end
end
