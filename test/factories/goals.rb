FactoryGirl.define do
  factory :goal do
    reason {Faker::Lorem.sentences(3).join(" ")}
    delight {Faker::Lorem.sentences(3).join(" ")}
    frequency {["Not regular - less than once a week.", "Somewhat regular - between one and three times a week.", "Regular - three or more times a week."].sample}
    current_activity {Faker::Lorem.sentences(3).join(" ")}
  end
end
