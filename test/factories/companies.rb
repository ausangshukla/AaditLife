FactoryGirl.define do
  factory :company do
    name "MyString"
    description "MyText"
    allowed_signup_count 1
  end
end
