FactoryGirl.define do
  factory :goal do
    reason {Faker::Simpsons.quote}
    delight {Faker::Simpsons.quote}
    frequency {["Not regular - less than once a week.", "Somewhat regular - between one and three times a week.", "Regular - three or more times a week."].sample}
    current_activity {Faker::Simpsons.quote}
  end
end
