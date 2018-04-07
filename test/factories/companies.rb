FactoryGirl.define do
  factory :company do
    name {Faker::Company.name}
    allowed_signup_count {rand.to_s[2..4]} 
    description {Faker::Company.bs}
  end
end
