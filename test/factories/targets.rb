FactoryGirl.define do
  factory :target do
    start_date {Date.today + rand(10) - rand(10)}
    end_date {start_date + 1.month}
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
  end
end
