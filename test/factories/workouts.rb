FactoryGirl.define do
  factory :workout do
    workout_type {Workout::WORKOUT_TYPES.sample}
    activity_time {[8,10,3,1.5].sample}
    activity_speed {[7,8,9,10].sample}
    recovery_time {[2,5,3,3.5].sample}
    recovery_speed {[5,4].sample}
    repeats {[9,4,8,8].sample}
    total_duration {[90,60,45,40].sample}
    current true
  end
end
