FactoryGirl.define do
  factory :goal do
    goal_name {Goal::GOALS.keys.sample}
    goal_desc {Faker::Lorem.sentences(3).join(" ")}
  end
end
