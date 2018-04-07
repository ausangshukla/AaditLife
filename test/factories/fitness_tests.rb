FactoryGirl.define do
  factory :fitness_test do
    test_date {Date.today + rand(10) - rand(10)}
    weight {Random.new.rand(45..120)}
    fat_percentage {Random.new.rand(20..35)}
    body_age {Random.new.rand(18..60)}
    bmi {Random.new.rand(45..120)}
    rm {Random.new.rand(45..120)}
    visc_fat {Random.new.rand(10..20)}
    sc_fat {Random.new.rand(10..20)}
    muscle_percentage {Random.new.rand(10..20)}
    fat_kg {Random.new.rand(10..20)}
    muscle_kg {Random.new.rand(10..20)}
    other_kg {Random.new.rand(10..20)}
    fat_loss {Random.new.rand(0..10)}
    muscle_gain {Random.new.rand(0..10)}
    max_speed {Random.new.rand(10..20)}
    duration {Random.new.rand(10..30)}
    reason_for_stopping {Faker::Simpsons.quote}
    test_details {Faker::Seinfeld.quote}
    max_heart_rate {Random.new.rand(90..120)}
  end
end
