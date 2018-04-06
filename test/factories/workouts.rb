FactoryGirl.define do
  factory :workout do
    user_id 1
    workout_type "MyString"
    activity_time 1
    activity_speed 1.5
    recover_time 1
    repeats 1
    total_duration 1
    current false
  end
end
