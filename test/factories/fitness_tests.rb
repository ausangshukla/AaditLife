FactoryGirl.define do
  factory :fitness_test do
    test_date "2018-04-06"
    weight 1.5
    fat_percentage 1.5
    body_age 1
    bmi 1.5
    rm 1.5
    visc_fat 1.5
    sc_fat 1.5
    muscle_percentage 1.5
    fat_kg 1.5
    muscle_kg 1.5
    other_kg 1.5
    fat_loss 1.5
    muscle_gain 1.5
    max_speed 1.5
    duration 1.5
    reason_for_stopping "MyString"
    test_details "MyText"
    user_id 1
    coach_id 1
    max_heart_rate 1
  end
end
