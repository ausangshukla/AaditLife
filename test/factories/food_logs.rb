FactoryGirl.define do
  factory :food_log do
    meal {FoodLog::MEAL_TYPES.sample}
    intake_date {Time.now}
    details {"I had a very good meal. " + Faker::Simpsons.quote}
  end
end
